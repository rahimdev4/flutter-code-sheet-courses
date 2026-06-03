import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('localNotes');
  runApp(MyApp(box: box));
}

class MyApp extends StatefulWidget {
  final Box box;
  const MyApp({super.key, required this.box});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _addNote() {
    widget.box.add('Note ${widget.box.length + 1}');
    setState(() {});
  }

  void _deleteNote(int i) {
    widget.box.deleteAt(i);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: Text('Notes (${widget.box.length})')),
        body: widget.box.isEmpty
            ? const Center(child: Text('No notes yet', style: TextStyle(color: Colors.white54)))
            : ListView.builder(
                itemCount: widget.box.length,
                itemBuilder: (ctx, i) => ListTile(
                  title: Text(widget.box.getAt(i), style: const TextStyle(color: Colors.white)),
                  trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.redAccent), onPressed: () => _deleteNote(i)),
                ),
              ),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _addNote, child: const Icon(Icons.add)),
      ),
    );
  }
}
