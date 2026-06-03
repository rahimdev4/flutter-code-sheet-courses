import 'package:flutter/material.dart';

/// Lesson 04 — The Build Method
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: BuildMethodDemo());
  }
}

class BuildMethodDemo extends StatefulWidget {
  const BuildMethodDemo({super.key});
  @override
  State<BuildMethodDemo> createState() => _BuildMethodDemoState();
}

class _BuildMethodDemoState extends State<BuildMethodDemo> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    // build() is called every time setState is triggered
    return Scaffold(
      backgroundColor: _isDarkMode ? Colors.grey[900] : Colors.white,
      appBar: AppBar(
        title: const Text('The Build Method'),
        backgroundColor: _isDarkMode ? Colors.grey[800] : Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.build, size: 60, color: _isDarkMode ? Colors.white : Colors.blue),
            const SizedBox(height: 16),
            Text(
              'build() runs every time state changes!',
              style: TextStyle(fontSize: 16, color: _isDarkMode ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => setState(() => _isDarkMode = !_isDarkMode),
              child: Text(_isDarkMode ? 'Light Mode' : 'Dark Mode'),
            ),
          ],
        ),
      ),
    );
  }
}
