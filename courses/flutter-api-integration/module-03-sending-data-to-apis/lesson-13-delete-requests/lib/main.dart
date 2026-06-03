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
  String _status = 'Ready to Delete';

  Future<void> sendDelete() async {
    setState(() => _status = 'Deleting...');
    final response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    );
    
    if (response.statusCode == 200) {
      setState(() => _status = 'Successfully Deleted! Code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('DELETE Request')),
        body: Center(
          child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent, foregroundColor: Colors.white,
          onPressed: sendDelete, child: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
