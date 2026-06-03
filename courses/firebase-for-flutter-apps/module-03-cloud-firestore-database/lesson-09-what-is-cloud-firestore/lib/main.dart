import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Cloud Firestore')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Firestore Structure:\n\n📁 Collection: "notes"\n  📄 Document: {id}\n    ├── title: "Buy milk"\n    ├── userId: "abc123"\n    └── createdAt: timestamp\n\nCollections hold Documents.\nDocuments hold Fields.', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'monospace'))))));
  }
}
