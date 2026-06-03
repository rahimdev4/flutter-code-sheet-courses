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
  int _limit = 5;
  List _items = [];

  Future<void> fetchMore() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=$_limit'));
    setState(() {
      _items = jsonDecode(res.body);
      _limit += 5; // Load 5 more next time
    });
  }

  @override
  void initState() {
    super.initState();
    fetchMore();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Pagination Concept')),
        body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (ctx, i) => ListTile(title: Text(_items[i]['title'], style: const TextStyle(color: Colors.white))),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchMore, child: const Icon(Icons.download_more),
        ),
      ),
    );
  }
}
