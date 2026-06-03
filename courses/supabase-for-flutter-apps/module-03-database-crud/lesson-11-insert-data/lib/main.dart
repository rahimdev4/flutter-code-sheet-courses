import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  String _status = 'Press button to insert';
  Future<void> _insert() async {
    try { await supabase.from('notes').insert({'title': 'New Note', 'user_id': supabase.auth.currentUser!.id}); setState(() => _status = 'Inserted successfully!'); }
    catch (e) { setState(() => _status = 'Error: \$e'); }
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Insert Data')),
        body: Center(child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 18))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _insert, child: const Icon(Icons.add))));
  }
}
