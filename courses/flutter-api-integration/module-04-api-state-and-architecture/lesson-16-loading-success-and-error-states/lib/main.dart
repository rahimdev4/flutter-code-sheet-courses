import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

enum ApiState { initial, loading, success, error }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ApiState _state = ApiState.initial;

  Future<void> doFetch() async {
    setState(() => _state = ApiState.loading);
    try {
      final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
      if (res.statusCode == 200) {
        setState(() => _state = ApiState.success);
      } else {
        setState(() => _state = ApiState.error);
      }
    } catch (e) {
      setState(() => _state = ApiState.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (_state == ApiState.loading) body = const CircularProgressIndicator(color: kAccent);
    else if (_state == ApiState.error) body = const Text('Network Error', style: TextStyle(color: Colors.red));
    else if (_state == ApiState.success) body = const Text('Data Loaded!', style: TextStyle(color: Colors.greenAccent));
    else body = const Text('Press button', style: TextStyle(color: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('State Enums')),
        body: Center(child: body),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: doFetch, child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
