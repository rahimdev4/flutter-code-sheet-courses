import 'package:flutter/material.dart';

/// Lesson 03 — Flutter Project Structure
///
/// Understanding the key files and folders in a Flutter project.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Project Structure'),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            _FolderItem(icon: Icons.folder, name: 'lib/', desc: 'Your Dart code lives here'),
            _FolderItem(icon: Icons.description, name: 'lib/main.dart', desc: 'App entry point'),
            _FolderItem(icon: Icons.settings, name: 'pubspec.yaml', desc: 'Dependencies and config'),
            _FolderItem(icon: Icons.android, name: 'android/', desc: 'Android-specific files'),
            _FolderItem(icon: Icons.apple, name: 'ios/', desc: 'iOS-specific files'),
            _FolderItem(icon: Icons.science, name: 'test/', desc: 'Unit and widget tests'),
            _FolderItem(icon: Icons.image, name: 'assets/', desc: 'Images, fonts, etc.'),
          ],
        ),
      ),
    );
  }
}

class _FolderItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String desc;

  const _FolderItem({required this.icon, required this.name, required this.desc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(desc),
    );
  }
}
