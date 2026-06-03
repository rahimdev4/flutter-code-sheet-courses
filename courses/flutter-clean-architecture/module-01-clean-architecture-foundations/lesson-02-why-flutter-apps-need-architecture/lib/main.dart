import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Why Architecture?')), body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Without architecture:\n❌ All logic in widgets\n❌ Hard to test\n❌ Breaking changes everywhere\n\nWith architecture:\n✅ Easy to find code\n✅ Easy to test\n✅ Safe to change', style: TextStyle(color: Colors.white, fontSize: 18)))))); } }
