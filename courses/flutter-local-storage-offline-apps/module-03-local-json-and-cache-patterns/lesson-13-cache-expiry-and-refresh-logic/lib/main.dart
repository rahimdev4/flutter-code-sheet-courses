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
  String _status = 'Checking cache...';

  Future<void> _checkCache() async {
    final prefs = await SharedPreferences.getInstance();
    final lastFetch = prefs.getInt('lastFetchTime') ?? 0;
    final now = DateTime.now().millisecondsSinceEpoch;
    final maxAge = 60 * 1000; // 60 seconds

    if (now - lastFetch < maxAge) {
      setState(() => _status = 'Cache is still fresh! Using local data.');
    } else {
      // Simulate re-fetch
      await Future.delayed(const Duration(seconds: 1));
      await prefs.setInt('lastFetchTime', now);
      setState(() => _status = 'Cache expired. Fetched fresh data!');
    }
  }

  @override
  void initState() { super.initState(); _checkCache(); }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Cache Expiry')),
        body: Center(child: Padding(padding: const EdgeInsets.all(16), child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _checkCache, child: const Icon(Icons.refresh)),
      ),
    );
  }
}
