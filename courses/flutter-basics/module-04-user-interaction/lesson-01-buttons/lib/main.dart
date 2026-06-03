import 'package:flutter/material.dart';

/// Lesson 01 — Buttons
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Buttons')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
              const SizedBox(height: 12),
              TextButton(onPressed: () {}, child: const Text('TextButton')),
              const SizedBox(height: 12),
              OutlinedButton(onPressed: () {}, child: const Text('OutlinedButton')),
              const SizedBox(height: 12),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.red)),
              const SizedBox(height: 12),
              FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            ],
          ),
        ),
      ),
    );
  }
}
