import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

Future<String> fetchTitle() async {
  final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/3'));
  if (res.statusCode == 200) {
    return jsonDecode(res.body)['title'];
  }
  throw Exception('Failed');
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('FutureBuilder')),
        body: Center(
          // FutureBuilder automatically handles the Future lifecycle!
          child: FutureBuilder<String>(
            future: fetchTitle(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(color: kAccent);
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.red));
              }
              return Text('Title: ${snapshot.data}', style: const TextStyle(color: Colors.white, fontSize: 24));
            },
          ),
        ),
      ),
    );
  }
}
