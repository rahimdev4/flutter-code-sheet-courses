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
  bool _isDark = true;

  @override
  void initState() { super.initState(); _load(); }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _isDark = prefs.getBool('darkMode') ?? true);
  }

  Future<void> _toggle() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _isDark = !_isDark);
    await prefs.setBool('darkMode', _isDark);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: _isDark ? kBg : Colors.grey[200], appBarTheme: AppBarTheme(backgroundColor: _isDark ? kCard : Colors.blue, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: Center(
          child: SwitchListTile(
            title: Text('Dark Mode', style: TextStyle(color: _isDark ? Colors.white : Colors.black)),
            value: _isDark, activeColor: kAccent, onChanged: (_) => _toggle(),
          ),
        ),
      ),
    );
  }
}
