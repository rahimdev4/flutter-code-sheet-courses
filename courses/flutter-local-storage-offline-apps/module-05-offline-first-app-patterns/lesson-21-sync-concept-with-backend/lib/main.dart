import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _pendingSync = ['Note A (offline)', 'Note B (offline)'];
  List<String> _synced = [];

  Future<void> _sync() async {
    for (final item in _pendingSync) {
      await Future.delayed(const Duration(milliseconds: 500)); // Simulate upload
      _synced.add(item.replaceAll('(offline)', '(synced)'));
    }
    setState(() => _pendingSync.clear());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Sync Concept')),
        body: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('⏳ Pending Sync:', style: TextStyle(color: Colors.orangeAccent, fontSize: 18)),
          ..._pendingSync.map((e) => Text('  • $e', style: const TextStyle(color: Colors.white))),
          const SizedBox(height: 20),
          const Text('✅ Synced:', style: TextStyle(color: kGreen, fontSize: 18)),
          ..._synced.map((e) => Text('  • $e', style: const TextStyle(color: Colors.white))),
        ])),
        floatingActionButton: FloatingActionButton(backgroundColor: kAccent, foregroundColor: kBg, onPressed: _sync, child: const Icon(Icons.sync)),
      ),
    );
  }
}
