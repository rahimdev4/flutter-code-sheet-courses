import 'package:flutter/material.dart';

/// Lesson 05 — ListView
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView'), backgroundColor: Colors.amber[700], foregroundColor: Colors.white),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(backgroundColor: Colors.amber, child: Text('${index + 1}')),
              title: Text('Item ${index + 1}'),
              subtitle: const Text('Tap to learn more'),
              trailing: const Icon(Icons.chevron_right),
            );
          },
        ),
      ),
    );
  }
}
