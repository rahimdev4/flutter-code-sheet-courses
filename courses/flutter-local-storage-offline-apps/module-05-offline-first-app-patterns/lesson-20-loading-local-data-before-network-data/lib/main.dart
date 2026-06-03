import 'package:flutter/material.dart';

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
  String _data = '';
  String _source = '';

  @override
  void initState() {
    super.initState();
    // Step 1: Load local cache instantly
    _data = 'Cached: Flutter is awesome';
    _source = '📱 Local Cache (instant)';
    setState(() {});

    // Step 2: Fetch from network in background
    Future.delayed(const Duration(seconds: 2), () {
      setState(() { _data = 'Fresh: Flutter 3.24 released!'; _source = '☁️ Network (2s later)'; });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Local Then Network')),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(_data, style: const TextStyle(color: Colors.white, fontSize: 22)),
          const SizedBox(height: 10),
          Text(_source, style: const TextStyle(color: kAccent)),
        ])),
      ),
    );
  }
}
