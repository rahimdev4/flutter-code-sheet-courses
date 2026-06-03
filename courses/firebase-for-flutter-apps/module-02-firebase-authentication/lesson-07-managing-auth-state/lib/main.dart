import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _S(); }
class _S extends State<MyApp> {
  String _st = 'Waiting...';
  @override void initState() { super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) { setState(() => _st = user != null ? 'Logged in: ${user.email}' : 'Not logged in'); });
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Auth State')), body: Center(child: Text(_st, style: const TextStyle(color: Colors.white, fontSize: 20)))));
  }
}
