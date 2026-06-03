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
  String _status = 'Press to fetch';

  Future<void> fetchWithTimeout() async {
    setState(() => _status = 'Loading...');
    try {
      // Use .timeout() to abort if taking too long
      final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')).timeout(const Duration(seconds: 2));
      setState(() => _status = 'Success: ${res.statusCode}');
    } catch (e) {
      setState(() => _status = 'Request Timed Out or Failed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Timeouts')),
        body: Center(
          child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: fetchWithTimeout, child: const Icon(Icons.timer),
        ),
      ),
    );
  }
}
