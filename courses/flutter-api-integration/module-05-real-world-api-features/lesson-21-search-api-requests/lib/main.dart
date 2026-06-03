import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  List _results = [];

  Future<void> search(String query) async {
    // Note: JSONPlaceholder doesn't have true search, using filtering logic as demo
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final list = jsonDecode(res.body) as List;
    setState(() {
      _results = list.where((e) => e['title'].contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(hintText: 'Search...', hintStyle: TextStyle(color: Colors.white54)),
            onSubmitted: search,
          ),
        ),
        body: ListView.builder(
          itemCount: _results.length,
          itemBuilder: (ctx, i) => ListTile(title: Text(_results[i]['title'], style: const TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
