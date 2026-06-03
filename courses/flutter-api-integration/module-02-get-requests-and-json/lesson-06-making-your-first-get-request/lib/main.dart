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
  String _data = 'Press button to fetch';

  Future<void> fetchData() async {
    setState(() => _data = 'Loading...');
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
      setState(() => _data = response.body);
    } catch (e) {
      setState(() => _data = 'Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('GET Request')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_data, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchData, child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
