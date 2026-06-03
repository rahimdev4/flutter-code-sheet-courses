import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY'); runApp(const MyApp()); }
final supabase = Supabase.instance.client;
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Filter & Order')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Filter:\n.select().eq("user_id", uid)\n\nOrder:\n.select().order("created_at")\n\nPaginate:\n.select().range(0, 9)  // first 10 rows', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'monospace'))))));
  }
}
