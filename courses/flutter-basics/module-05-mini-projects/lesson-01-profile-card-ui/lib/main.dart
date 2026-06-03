import 'package:flutter/material.dart';

/// Mini Project — Profile Card UI
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(useMaterial3: true), home: const ProfileScreen());
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text('Profile Card')),
      body: Center(
        child: Card(
          elevation: 4, margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(radius: 50, backgroundColor: Colors.deepPurple, child: Text('FL', style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold))),
                const SizedBox(height: 16),
                const Text('Flutter Learner', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text('Mobile Developer', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                const SizedBox(height: 16), const Divider(), const SizedBox(height: 8),
                const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [_Stat('Projects', '12'), _Stat('Followers', '1.2K'), _Stat('Following', '89')]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label, value;
  const _Stat(this.label, this.value);
  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(label, style: TextStyle(color: Colors.grey[600]))]);
  }
}
