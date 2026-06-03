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
  String? _cachedData; // The cache!

  Future<void> fetch() async {
    if (_cachedData != null) return; // Skip API if we have data

    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    setState(() => _cachedData = jsonDecode(res.body)['title']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Cache Concept')),
        body: Center(
          child: Text(_cachedData ?? 'No data yet', style: const TextStyle(color: Colors.white, fontSize: 24)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetch, child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
