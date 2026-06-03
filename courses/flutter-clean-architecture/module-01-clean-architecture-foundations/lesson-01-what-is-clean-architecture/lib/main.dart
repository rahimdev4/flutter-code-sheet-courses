import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Clean Architecture')), body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Clean Architecture:\n\n• Separates UI from logic from data\n• Each layer has clear responsibility\n• Inner layers know nothing about outer\n• Makes code testable and maintainable', style: TextStyle(color: Colors.white, fontSize: 18)))))); } }
