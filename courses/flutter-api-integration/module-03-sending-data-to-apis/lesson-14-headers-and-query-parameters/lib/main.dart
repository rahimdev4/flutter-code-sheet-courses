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
  String _status = 'Fetch User Posts';

  Future<void> fetchFiltered() async {
    // 1. Query Parameters (?userId=1)
    final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts').replace(queryParameters: {'userId': '1'});
    
    // 2. Headers (metadata)
    final response = await http.get(
      uri,
      headers: {'Accept': 'application/json'},
    );
    
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;
      setState(() => _status = 'Found ${list.length} posts for User 1!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Params & Headers')),
        body: Center(
          child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchFiltered, child: const Icon(Icons.filter_list),
        ),
      ),
    );
  }
}
