import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  String _msg = 'Press to test error handling';
  Future<void> _testError() async {
    try { await supabase.from('nonexistent_table').select(); setState(() => _msg = 'Success (unexpected)'); }
    on PostgrestException catch (e) { setState(() => _msg = 'DB Error: \${e.message}'); }
    on AuthException catch (e) { setState(() => _msg = 'Auth Error: \${e.message}'); }
    catch (e) { setState(() => _msg = 'Unknown: \$e'); }
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Error Handling')),
        body: Center(child: Padding(padding: const EdgeInsets.all(16), child: Text(_msg, style: const TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _testError, child: const Icon(Icons.bug_report))));
  }
}
