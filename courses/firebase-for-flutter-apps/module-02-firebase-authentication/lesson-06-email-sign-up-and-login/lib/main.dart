import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A); const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _S(); }
class _S extends State<MyApp> {
  final _e = TextEditingController(); final _p = TextEditingController(); String _st = '';
  Future<void> _signUp() async { try { await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _e.text, password: _p.text); setState(() => _st = 'Signed up!'); } on FirebaseAuthException catch (e) { setState(() => _st = e.message ?? 'Error'); } }
  Future<void> _login() async { try { await FirebaseAuth.instance.signInWithEmailAndPassword(email: _e.text, password: _p.text); setState(() => _st = 'Logged in as ${FirebaseAuth.instance.currentUser?.email}'); } on FirebaseAuthException catch (e) { setState(() => _st = e.message ?? 'Error'); } }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Email Auth')),
        body: Padding(padding: const EdgeInsets.all(16), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(controller: _e, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white54))),
          const SizedBox(height: 12),
          TextField(controller: _p, obscureText: true, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.white54))),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg), onPressed: _signUp, child: const Text('Sign Up')),
            const SizedBox(width: 12),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white), onPressed: _login, child: const Text('Login')),
          ]),
          const SizedBox(height: 20), Text(_st, style: const TextStyle(color: Colors.white)),
        ]))));
  }
}
