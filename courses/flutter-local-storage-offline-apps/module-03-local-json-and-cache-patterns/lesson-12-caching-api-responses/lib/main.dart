import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<String> _fakeApiFetch() async {
    await Future.delayed(const Duration(seconds: 2));
    return jsonEncode({'message': 'Fresh data from server', 'time': DateTime.now().toString()});
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString('cachedResponse');
    if (cached != null) {
      setState(() { _data = jsonDecode(cached)['message']; _source = 'From Cache (instant)'; });
    }
    final fresh = await _fakeApiFetch();
    await prefs.setString('cachedResponse', fresh);
    setState(() { _data = jsonDecode(fresh)['message']; _source = 'From API (updated)'; });
  }

  @override
  void initState() { super.initState(); _loadData(); }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('API Cache')),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(_data.isEmpty ? 'Loading...' : _data, style: const TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(height: 10),
          Text(_source, style: const TextStyle(color: kAccent, fontSize: 14)),
        ])),
      ),
    );
  }
}
