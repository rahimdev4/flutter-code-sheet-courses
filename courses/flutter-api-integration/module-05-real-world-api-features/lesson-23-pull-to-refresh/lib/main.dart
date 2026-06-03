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
  List _items = [];

  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate slow net
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=3'));
    setState(() => _items = jsonDecode(res.body));
  }

  @override
  void initState() { super.initState(); refreshData(); }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Pull to Refresh')),
        body: RefreshIndicator(
          color: kAccent, backgroundColor: kCard,
          onRefresh: refreshData, // Pass the Future method here!
          child: ListView.builder(
            itemCount: _items.length,
            itemBuilder: (ctx, i) => ListTile(title: Text(_items[i]['title'], style: const TextStyle(color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
