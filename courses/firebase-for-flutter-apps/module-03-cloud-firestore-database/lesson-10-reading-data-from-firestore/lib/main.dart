import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A); const kAccent = Color(0xFF00D9FF);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Read Data')),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('notes').snapshots(),
          builder: (ctx, snap) {
            if (snap.connectionState == ConnectionState.waiting) return const Center(child: CircularProgressIndicator(color: kAccent));
            final docs = snap.data?.docs ?? [];
            return ListView.builder(itemCount: docs.length, itemBuilder: (ctx, i) => ListTile(title: Text(docs[i]['title'] ?? '', style: const TextStyle(color: Colors.white))));
          })));
  }
}
