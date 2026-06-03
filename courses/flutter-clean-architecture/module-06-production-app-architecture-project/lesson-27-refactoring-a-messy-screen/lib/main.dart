import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Refactoring')), body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Before refactoring:\n❌ API call in build()\n❌ JSON parsing in widget\n❌ setState everywhere\n\nAfter refactoring:\n✅ DataSource fetches data\n✅ Repository handles logic\n✅ UseCase wraps action\n✅ Provider manages state\n✅ Widget just displays', style: TextStyle(color: Colors.white, fontSize: 18)))))); } }
