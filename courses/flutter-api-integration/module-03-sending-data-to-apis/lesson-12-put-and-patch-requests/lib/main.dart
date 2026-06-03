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
  String _status = 'Press button to PUT';

  Future<void> sendPut() async {
    setState(() => _status = 'Updating...');
    // PUT replaces the entire object
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'id': 1, 'title': 'Updated Title', 'body': 'Updated Body', 'userId': 1}),
    );
    
    if (response.statusCode == 200) {
      setState(() => _status = 'Updated: ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('PUT Request')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: sendPut, child: const Icon(Icons.update),
        ),
      ),
    );
  }
}
