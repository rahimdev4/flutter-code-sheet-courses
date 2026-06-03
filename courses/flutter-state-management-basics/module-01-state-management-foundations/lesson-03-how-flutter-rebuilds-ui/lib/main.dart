import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const RebuildDemo(),
    );
  }
}

class RebuildDemo extends StatefulWidget {
  const RebuildDemo({super.key});
  @override
  State<RebuildDemo> createState() => _RebuildDemoState();
}

class _RebuildDemoState extends State<RebuildDemo> {
  int _rebuildCount = 0;

  @override
  Widget build(BuildContext context) {
    // This print will trigger every time setState is called
    print('Building UI... count is $_rebuildCount');
    
    return Scaffold(
      appBar: AppBar(title: const Text('UI Rebuilds')),
      body: Center(
        child: Text('Rebuilds: $_rebuildCount', style: const TextStyle(color: Colors.white, fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        onPressed: () => setState(() => _rebuildCount++),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
