import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'SUPABASE_URL', anonKey: 'SUPABASE_ANON_KEY');
  runApp(const MyApp());
}
final supabase = Supabase.instance.client;
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _MyAppState(); }
class _MyAppState extends State<MyApp> {
  final _email = TextEditingController(); final _pass = TextEditingController(); String _status = '';
  Future<void> _signUp() async {
    try { await supabase.auth.signUp(email: _email.text, password: _pass.text); setState(() => _status = 'Sign up successful! Check email.'); }
    catch (e) { setState(() => _status = 'Error: \$e'); }
  }
  Future<void> _login() async {
    try { await supabase.auth.signInWithPassword(email: _email.text, password: _pass.text); setState(() => _status = 'Logged in as \${supabase.auth.currentUser?.email}'); }
    catch (e) { setState(() => _status = 'Error: \$e'); }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Email Auth')),
        body: Padding(padding: const EdgeInsets.all(16), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(controller: _email, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white54))),
          const SizedBox(height: 12),
          TextField(controller: _pass, obscureText: true, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.white54))),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: _signUp, child: const Text('Sign Up')),
            const SizedBox(width: 12),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white), onPressed: _login, child: const Text('Login')),
          ]),
          const SizedBox(height: 20), Text(_status, style: const TextStyle(color: Colors.white)),
        ]))));
  }
}
