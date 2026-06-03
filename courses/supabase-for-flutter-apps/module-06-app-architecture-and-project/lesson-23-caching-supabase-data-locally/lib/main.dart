import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  List<dynamic> _notes = []; String _source = '';
  @override void initState() { super.initState(); _loadCachedThenFresh(); }
  Future<void> _loadCachedThenFresh() async {
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString('cached_notes');
    if (cached != null) { setState(() { _notes = jsonDecode(cached); _source = 'From cache'; }); }
    try {
      final fresh = await supabase.from('notes').select().order('created_at');
      await prefs.setString('cached_notes', jsonEncode(fresh));
      setState(() { _notes = fresh; _source = 'From Supabase'; });
    } catch (e) { if (_notes.isEmpty) setState(() => _source = 'Offline - no cache'); }
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: Text('Cache (\$_source)')),
        body: ListView.builder(itemCount: _notes.length, itemBuilder: (ctx, i) => ListTile(title: Text(_notes[i]['title'] ?? '', style: const TextStyle(color: Colors.white)))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _loadCachedThenFresh, child: const Icon(Icons.refresh))));
  }
}
