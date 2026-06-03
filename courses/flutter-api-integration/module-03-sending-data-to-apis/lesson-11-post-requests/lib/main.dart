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
  String _status = 'Press button to create POST';

  Future<void> sendPost() async {
    setState(() => _status = 'Sending...');
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {'Content-Type': 'application/json'},
      // Encode Dart Map into JSON String
      body: jsonEncode({'title': 'My New Post', 'body': 'Hello API', 'userId': 1}),
    );
    
    if (response.statusCode == 201) {
      setState(() => _status = 'Success! Created: ${response.body}');
    } else {
      setState(() => _status = 'Failed: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('POST Request')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: sendPost, child: const Icon(Icons.send),
        ),
      ),
    );
  }
}
