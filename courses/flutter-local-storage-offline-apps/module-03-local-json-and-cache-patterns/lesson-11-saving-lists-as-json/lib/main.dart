import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _items = [];

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    _items.add({'name': 'Item ${_items.length + 1}', 'done': false});
    await prefs.setString('items', jsonEncode(_items));
    setState(() {});
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString('items');
    if (raw != null) setState(() => _items = List<Map<String, dynamic>>.from(jsonDecode(raw)));
  }

  @override
  void initState() { super.initState(); _load(); }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('JSON Lists')),
        body: ListView.builder(itemCount: _items.length, itemBuilder: (ctx, i) => ListTile(title: Text(_items[i]['name'], style: const TextStyle(color: Colors.white)))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _save, child: const Icon(Icons.add)),
      ),
    );
  }
}
