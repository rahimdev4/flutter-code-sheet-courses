import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class Post {
  final int id;
  final String title;
  Post({required this.id, required this.title});
  factory Post.fromJson(Map<String, dynamic> json) => Post(id: json['id'], title: json['title']);
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Post> _posts = [];

  Future<void> fetchList() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (res.statusCode == 200) {
      // 1. Decode as List
      List jsonList = jsonDecode(res.body);
      // 2. Map JSON into Post objects
      setState(() {
        _posts = jsonList.map((json) => Post.fromJson(json)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Lists of Data')),
        body: ListView.builder(
          itemCount: _posts.length > 5 ? 5 : _posts.length, // Show top 5 for demo
          itemBuilder: (ctx, i) => ListTile(
            title: Text(_posts[i].title, style: const TextStyle(color: Colors.white)),
            leading: CircleAvatar(backgroundColor: kAccent, child: Text('${_posts[i].id}', style: const TextStyle(color: kBg))),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchList, child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
