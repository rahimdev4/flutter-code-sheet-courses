import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final categories = [('📱', 'Flutter'), ('🎯', 'Dart'), ('🎨', 'UI'), ('📊', 'State'), ('🔌', 'API'), ('🧪', 'Testing')];
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('GridView'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: GridView.count(
        crossAxisCount: 2, padding: const EdgeInsets.all(16), crossAxisSpacing: 12, mainAxisSpacing: 12,
        children: categories.map((c) => Container(
          decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(16)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(c.$1, style: const TextStyle(fontSize: 36)),
            const SizedBox(height: 8),
            Text(c.$2, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          ]),
        )).toList(),
      ),
    ));
  }
}
