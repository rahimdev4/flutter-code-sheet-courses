import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('notesBox');
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
    final note = {'title': 'Note ${widget.box.length + 1}', 'date': DateTime.now().toString()};
    widget.box.add(note); // auto-incremented key
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Model Objects')),
        body: ListView.builder(
          itemCount: widget.box.length,
          itemBuilder: (ctx, i) {
            final note = widget.box.getAt(i) as Map;
            return ListTile(title: Text(note['title'], style: const TextStyle(color: Colors.white)), subtitle: Text(note['date'], style: const TextStyle(color: Colors.white54)));
          },
        ),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _addNote, child: const Icon(Icons.add)),
      ),
    );
  }
}
