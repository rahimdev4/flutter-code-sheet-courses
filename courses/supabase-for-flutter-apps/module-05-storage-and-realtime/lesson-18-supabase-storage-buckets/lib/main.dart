import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Storage Buckets')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Supabase Storage:\n\n📁 Buckets organize files\n🌐 Public buckets = anyone can view\n🔒 Private buckets = signed URLs only\n\nCreate buckets in Dashboard > Storage', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
