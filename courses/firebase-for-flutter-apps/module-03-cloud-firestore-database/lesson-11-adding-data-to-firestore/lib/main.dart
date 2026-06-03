import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A); const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatefulWidget { const MyApp({super.key}); @override State<MyApp> createState() => _S(); }
class _S extends State<MyApp> {
  String _st = 'Press to add';
  Future<void> _add() async {
    try { await FirebaseFirestore.instance.collection('notes').add({'title': 'New Note', 'createdAt': FieldValue.serverTimestamp()}); setState(() => _st = 'Added!'); }
    catch (e) { setState(() => _st = 'Error: $e'); }
  }
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Add Data')), body: Center(child: Text(_st, style: const TextStyle(color: Colors.white, fontSize: 18))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _add, child: const Icon(Icons.add))));
  }
}
