import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Configure via FlutterFire CLI
  runApp(const ProviderScope(child: MyApp()));
}

// --- Repository ---
class NotesRepository {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot> notesStream() {
    return _firestore
        .collection('notes')
        .where('userId', isEqualTo: _auth.currentUser?.uid)
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  Future<void> addNote(String title) async {
    await _firestore.collection('notes').add({
      'title': title,
      'userId': _auth.currentUser!.uid,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteNote(String docId) async {
    await _firestore.collection('notes').doc(docId).delete();
  }
}

final repoProvider = Provider((ref) => NotesRepository());

// --- UI ---
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: kBg,
        appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: FirebaseAuth.instance.currentUser != null ? const NotesScreen() : const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  Future<void> _login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _pass.text);
      if (mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const NotesScreen()));
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Login')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(controller: _email, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white54))),
        const SizedBox(height: 12),
        TextField(controller: _pass, obscureText: true, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.white54))),
        const SizedBox(height: 20),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: _login, child: const Text('Login')),
      ])));
  }
}

class NotesScreen extends ConsumerWidget {
  const NotesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.read(repoProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('My Notes'), actions: [
        IconButton(icon: const Icon(Icons.logout), onPressed: () async {
          await FirebaseAuth.instance.signOut();
          if (context.mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        })
      ]),
      body: StreamBuilder<QuerySnapshot>(
        stream: repo.notesStream(),
        builder: (ctx, snap) {
          if (snap.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator(color: kAccent));
          if (snap.hasError) return Center(child: Text('Error: ${snap.error}', style: const TextStyle(color: Colors.red)));
          final docs = snap.data?.docs ?? [];
          if (docs.isEmpty) return const Center(child: Text('No notes yet!', style: TextStyle(color: Colors.white54, fontSize: 18)));
          return ListView.builder(itemCount: docs.length, itemBuilder: (ctx, i) {
            final doc = docs[i];
            return Card(color: kCard, margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6), child: ListTile(
              title: Text(doc['title'] ?? '', style: const TextStyle(color: Colors.white)),
              trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.redAccent), onPressed: () => repo.deleteNote(doc.id)),
            ));
          });
        },
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: () => _showAddDialog(context, repo), child: const Icon(Icons.add)),
    );
  }
  void _showAddDialog(BuildContext context, NotesRepository repo) {
    final ctrl = TextEditingController();
    showDialog(context: context, builder: (ctx) => AlertDialog(backgroundColor: kCard,
      title: const Text('Add Note', style: TextStyle(color: Colors.white)),
      content: TextField(controller: ctrl, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Note title...', hintStyle: TextStyle(color: Colors.white54))),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel', style: TextStyle(color: Colors.white54))),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: () { if (ctrl.text.isNotEmpty) { repo.addNote(ctrl.text); Navigator.pop(ctx); } }, child: const Text('Add')),
      ],
    ));
  }
}
