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
  String _status = 'Press sync to simulate';
  int _attempt = 0;

  Future<void> _simulateSync() async {
    _attempt++;
    setState(() => _status = 'Syncing attempt #$_attempt...');
    await Future.delayed(const Duration(seconds: 1));

    if (_attempt % 2 == 1) {
      setState(() => _status = '❌ Sync failed! Will retry next time.\nData saved locally as pending.');
    } else {
      setState(() => _status = '✅ Sync succeeded on attempt #$_attempt!\nLocal pending queue cleared.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Failed Sync')),
        body: Center(child: Padding(padding: const EdgeInsets.all(16), child: Text(_status, style: const TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center))),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _simulateSync, child: const Icon(Icons.sync)),
      ),
    );
  }
}
