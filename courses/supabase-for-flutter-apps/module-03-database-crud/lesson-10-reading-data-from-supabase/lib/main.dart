import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  List<dynamic> _notes = [];
  Future<void> _fetch() async { final data = await supabase.from('notes').select(); setState(() => _notes = data); }
  @override void initState() { super.initState(); _fetch(); }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Read Data')),
        body: ListView.builder(itemCount: _notes.length, itemBuilder: (ctx, i) => ListTile(title: Text(_notes[i]['title'] ?? '', style: const TextStyle(color: Colors.white)))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _fetch, child: const Icon(Icons.refresh))));
  }
}
