import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// 1. Separate Service Class
class PostService {
  Future<String> fetchFirstPostTitle() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (res.statusCode == 200) {
      return jsonDecode(res.body)['title'];
    }
    throw Exception('API Error');
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _service = PostService(); // Use service in UI
  String _title = '';

  @override
  void initState() {
    super.initState();
    _service.fetchFirstPostTitle().then((val) => setState(() => _title = val));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Service Pattern')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_title.isEmpty ? 'Loading...' : 'Title: $_title', style: const TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
      ),
    );
  }
}
