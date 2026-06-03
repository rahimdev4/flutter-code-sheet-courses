import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// 1. Create a Model Class
class Post {
  final int id;
  final String title;

  Post({required this.id, required this.title});

  // 2. Factory method to create an object from JSON Map
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(id: json['id'], title: json['title']);
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Post? _post;

  Future<void> fetchData() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/2'));
    if (res.statusCode == 200) {
      setState(() {
        // Use the factory!
        _post = Post.fromJson(jsonDecode(res.body));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Dart Models')),
        body: Center(
          child: _post == null 
              ? const Text('Fetch data', style: TextStyle(color: Colors.white))
              : Text('Post #${_post!.id}\n${_post!.title}', style: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchData, child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
