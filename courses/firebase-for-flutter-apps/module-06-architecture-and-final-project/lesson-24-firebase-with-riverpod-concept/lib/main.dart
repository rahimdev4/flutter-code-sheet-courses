import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A); const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const ProviderScope(child: MyApp())); }

class NotesRepo {
  Stream<QuerySnapshot> notesStream() => FirebaseFirestore.instance.collection('notes').snapshots();
}
final repoProvider = Provider((ref) => NotesRepo());
final notesStreamProvider = StreamProvider<QuerySnapshot>((ref) => ref.read(repoProvider).notesStream());

class MyApp extends ConsumerWidget { const MyApp({super.key});
  @override Widget build(BuildContext context, WidgetRef ref) {
    final asyncNotes = ref.watch(notesStreamProvider);
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Riverpod + Firebase')),
        body: asyncNotes.when(
          data: (snap) => ListView.builder(itemCount: snap.docs.length, itemBuilder: (ctx, i) => ListTile(title: Text(snap.docs[i]['title'] ?? '', style: const TextStyle(color: Colors.white)))),
          loading: () => const Center(child: CircularProgressIndicator(color: kAccent)),
          error: (e, st) => Center(child: Text('Error: $e', style: const TextStyle(color: Colors.red))))));
  }
}
