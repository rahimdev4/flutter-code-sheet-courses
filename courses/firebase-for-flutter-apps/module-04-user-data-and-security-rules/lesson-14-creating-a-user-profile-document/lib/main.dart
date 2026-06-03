import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('User Profiles')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Create profile on sign up:\n\nFirebaseFirestore.instance\n  .collection("users")\n  .doc(user.uid)\n  .set({\n    "email": user.email,\n    "displayName": "New User",\n  });', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'monospace'))))));
  }
}
