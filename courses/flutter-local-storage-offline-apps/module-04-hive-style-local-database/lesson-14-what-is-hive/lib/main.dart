import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('What is Hive?')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(
          child: Text('📦 Hive is a fast, lightweight NoSQL database.\n\n✅ No native dependencies\n✅ Works on all platforms\n✅ Key-value storage in "Boxes"\n✅ Supports custom objects\n\nGreat for storing models, lists, and structured data locally!', style: TextStyle(color: Colors.white, fontSize: 18)),
        )),
      ),
    );
  }
}
