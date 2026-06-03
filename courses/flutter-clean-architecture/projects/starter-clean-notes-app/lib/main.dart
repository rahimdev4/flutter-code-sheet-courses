import 'package:flutter/material.dart';
// This is intentionally a simple, unstructured app.
// Compare with final-clean-notes-app to see the difference.
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const NotesPage());
  }
}
class NotesPage extends StatefulWidget { const NotesPage({super.key}); @override State<NotesPage> createState() => _NotesPageState(); }
class _NotesPageState extends State<NotesPage> {
  // Everything in one file - no layers, no separation
  final List<String> _notes = [];
  void _add() { setState(() => _notes.add('Note ${_notes.length + 1}')); }
  void _remove(int i) { setState(() => _notes.removeAt(i)); }
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Messy Notes')),
      body: _notes.isEmpty ? const Center(child: Text('No notes', style: TextStyle(color: Colors.white54)))
        : ListView.builder(itemCount: _notes.length, itemBuilder: (c, i) => ListTile(title: Text(_notes[i], style: const TextStyle(color: Colors.white)), trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.redAccent), onPressed: () => _remove(i)))),
      floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _add, child: const Icon(Icons.add)));
  }
}
