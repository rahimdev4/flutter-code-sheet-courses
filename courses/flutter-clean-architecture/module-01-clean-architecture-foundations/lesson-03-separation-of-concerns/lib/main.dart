import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('SoC')), body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Separation of Concerns:\n\n🎨 UI → how things look\n🧠 Logic → what happens\n💾 Data → where things come from\n\nEach part stays independent!', style: TextStyle(color: Colors.white, fontSize: 18)))))); } }
