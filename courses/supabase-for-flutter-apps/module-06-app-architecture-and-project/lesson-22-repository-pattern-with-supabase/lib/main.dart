import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;

class NotesRepo {
  Future<List<dynamic>> getAll() => supabase.from('notes').select().order('created_at');
  Future<void> add(String title) => supabase.from('notes').insert({'title': title, 'user_id': supabase.auth.currentUser!.id});
  Future<void> remove(String id) => supabase.from('notes').delete().eq('id', id);
}

class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  final _repo = NotesRepo(); List<dynamic> _notes = [];
  @override void initState() { super.initState(); _load(); }
  Future<void> _load() async { final data = await _repo.getAll(); setState(() => _notes = data); }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Repository Pattern')),
        body: ListView.builder(itemCount: _notes.length, itemBuilder: (ctx, i) => ListTile(title: Text(_notes[i]['title'] ?? '', style: const TextStyle(color: Colors.white)))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _load, child: const Icon(Icons.refresh))));
  }
}
