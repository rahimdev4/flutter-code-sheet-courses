import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key}); @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const NotesScreen()); } }
class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});
  @override Widget build(BuildContext context) {
    // Presentation layer: ONLY handles UI
    return Scaffold(appBar: AppBar(title: const Text('Presentation')),
      body: const Center(child: Text('This layer only shows UI.\nIt calls providers, never APIs directly.', style: TextStyle(color: Colors.white, fontSize: 18))));
  }
}
