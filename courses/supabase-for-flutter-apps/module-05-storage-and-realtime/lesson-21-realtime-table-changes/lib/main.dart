import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  String _event = 'Listening for changes...';
  @override void initState() { super.initState();
    supabase.channel('notes_changes').onPostgresChanges(
      event: PostgresChangeEvent.all, schema: 'public', table: 'notes',
      callback: (payload) { setState(() => _event = 'Event: \${payload.eventType}\nNew: \${payload.newRecord}'); },
    ).subscribe();
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Realtime')),
        body: Center(child: Padding(padding: const EdgeInsets.all(16), child: Text(_event, style: const TextStyle(color: kAccent, fontSize: 18))))));
  }
}
