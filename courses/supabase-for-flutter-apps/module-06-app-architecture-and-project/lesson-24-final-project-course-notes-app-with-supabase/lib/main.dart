import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

// --- Replace with your own Supabase project credentials ---
const supabaseUrl = 'SUPABASE_URL';
const supabaseAnonKey = 'SUPABASE_ANON_KEY';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  runApp(const ProviderScope(child: MyApp()));
}

final supabase = Supabase.instance.client;

// --- Repository ---
class NotesRepository {
  Future<List<Map<String, dynamic>>> fetchNotes() async {
    final response = await supabase.from('notes').select().order('created_at', ascending: false);
    return List<Map<String, dynamic>>.from(response);
  }

  Future<void> addNote(String title) async {
    await supabase.from('notes').insert({'title': title, 'user_id': supabase.auth.currentUser!.id});
  }

  Future<void> deleteNote(String id) async {
    await supabase.from('notes').delete().eq('id', id);
  }
}

// --- Providers ---
final repoProvider = Provider((ref) => NotesRepository());

final notesProvider = FutureProvider<List<Map<String, dynamic>>>((ref) {
  return ref.read(repoProvider).fetchNotes();
});

// --- UI ---
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: kBg,
        appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: supabase.auth.currentUser != null ? const NotesScreen() : const LoginScreen(),
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
      await supabase.auth.signInWithPassword(email: _email.text, password: _pass.text);
      if (mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const NotesScreen()));
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: \$e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(controller: _email, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white54))),
        const SizedBox(height: 12),
        TextField(controller: _pass, obscureText: true, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.white54))),
        const SizedBox(height: 20),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: _login, child: const Text('Login')),
      ])),
    );
  }
}

class NotesScreen extends ConsumerWidget {
  const NotesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNotes = ref.watch(notesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('My Notes'), actions: [
        IconButton(icon: const Icon(Icons.logout), onPressed: () async {
          await supabase.auth.signOut();
          if (context.mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
        })
      ]),
      body: asyncNotes.when(
        data: (notes) => notes.isEmpty
            ? const Center(child: Text('No notes yet!', style: TextStyle(color: Colors.white54, fontSize: 18)))
            : ListView.builder(itemCount: notes.length, itemBuilder: (ctx, i) {
                final note = notes[i];
                return Card(color: kCard, margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6), child: ListTile(
                  title: Text(note['title'], style: const TextStyle(color: Colors.white)),
                  trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.redAccent), onPressed: () async {
                    await ref.read(repoProvider).deleteNote(note['id']);
                    ref.invalidate(notesProvider);
                  }),
                ));
              }),
        loading: () => const Center(child: CircularProgressIndicator(color: kAccent)),
        error: (e, st) => Center(child: Text('Error: \$e', style: const TextStyle(color: Colors.red))),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: () => _showAddDialog(context, ref), child: const Icon(Icons.add)),
    );
  }

  void _showAddDialog(BuildContext context, WidgetRef ref) {
    final ctrl = TextEditingController();
    showDialog(context: context, builder: (ctx) => AlertDialog(
      backgroundColor: kCard,
      title: const Text('Add Note', style: TextStyle(color: Colors.white)),
      content: TextField(controller: ctrl, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Note title...', hintStyle: TextStyle(color: Colors.white54))),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel', style: TextStyle(color: Colors.white54))),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: () async {
          if (ctrl.text.isNotEmpty) { await ref.read(repoProvider).addNote(ctrl.text); ref.invalidate(notesProvider); Navigator.pop(ctx); }
        }, child: const Text('Add')),
      ],
    ));
  }
}
