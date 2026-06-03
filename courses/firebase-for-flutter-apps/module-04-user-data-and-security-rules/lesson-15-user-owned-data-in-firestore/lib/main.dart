import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('User Owned Data')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Always include userId:\n\n.add({\n  "title": "My Note",\n  "userId": auth.currentUser!.uid,\n});\n\nThen query with:\n.where("userId", isEqualTo: uid)', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'monospace'))))));
  }
}
