import 'package:flutter/material.dart';

/// Lesson 02 — TextField
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const TextFieldDemo());
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});
  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final _controller = TextEditingController();
  String _displayText = '';

  @override
  void dispose() { _controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField'), backgroundColor: Colors.green, foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(controller: _controller, decoration: InputDecoration(labelText: 'Enter your name', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () => setState(() => _displayText = _controller.text), child: const Text('Submit')),
            const SizedBox(height: 24),
            if (_displayText.isNotEmpty) Text('Hello, $_displayText! 👋', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
