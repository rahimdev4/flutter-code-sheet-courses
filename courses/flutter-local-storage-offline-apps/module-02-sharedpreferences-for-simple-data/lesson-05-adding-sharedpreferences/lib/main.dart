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
  String _status = 'Not initialized';

  Future<void> initPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _status = 'SharedPreferences is ready! Keys: ${prefs.getKeys().length}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Setup SharedPrefs')),
        body: Center(child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 18))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: initPrefs, child: const Icon(Icons.play_arrow)),
      ),
    );
  }
}
