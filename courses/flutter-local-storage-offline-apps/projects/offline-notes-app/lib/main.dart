import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBg,
        appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: kAccent, foregroundColor: kBg),
      ),
      home: const NotesScreen(),
    );
  }
}

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});
  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Map<String, dynamic>> _notes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('notes');
    if (raw != null) {
      setState(() {
        _notes = List<Map<String, dynamic>>.from(jsonDecode(raw));
      });
    }
  }

  Future<void> _saveNotes() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notes', jsonEncode(_notes));
  }

  void _addNote(String title) {
    setState(() {
      _notes.add({'title': title, 'favorite': false});
    });
    _saveNotes();
  }

  void _deleteNote(int index) {
    setState(() => _notes.removeAt(index));
    _saveNotes();
  }

  void _toggleFavorite(int index) {
    setState(() => _notes[index]['favorite'] = !_notes[index]['favorite']);
    _saveNotes();
  }

  void _showAddDialog() {
    final ctrl = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: kCard,
        title: const Text('Add Note', style: TextStyle(color: Colors.white)),
        content: TextField(
          controller: ctrl,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'Note title...', hintStyle: TextStyle(color: Colors.white54)),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel', style: TextStyle(color: Colors.white54))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
            onPressed: () { if (ctrl.text.isNotEmpty) { _addNote(ctrl.text); Navigator.pop(ctx); } },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offline Notes')),
      body: _notes.isEmpty
          ? const Center(child: Text('No notes yet!', style: TextStyle(color: Colors.white54, fontSize: 18)))
          : ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (ctx, i) {
                final note = _notes[i];
                return Dismissible(
                  key: Key('$i-${note['title']}'),
                  background: Container(color: Colors.redAccent, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 20), child: const Icon(Icons.delete, color: Colors.white)),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) => _deleteNote(i),
                  child: Card(
                    color: kCard,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: ListTile(
                      title: Text(note['title'], style: const TextStyle(color: Colors.white)),
                      trailing: IconButton(
                        icon: Icon(note['favorite'] ? Icons.favorite : Icons.favorite_border, color: note['favorite'] ? Colors.redAccent : Colors.white54),
                        onPressed: () => _toggleFavorite(i),
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(onPressed: _showAddDialog, child: const Icon(Icons.add)),
    );
  }
}
