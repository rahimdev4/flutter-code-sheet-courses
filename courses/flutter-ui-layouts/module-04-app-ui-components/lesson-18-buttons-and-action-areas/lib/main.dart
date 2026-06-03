import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Buttons'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(width: double.infinity, height: 50, child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Text('Continue Learning', style: TextStyle(fontSize: 16)))),
        const SizedBox(height: 16),
        SizedBox(width: double.infinity, height: 50, child: OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: kAccent, side: const BorderSide(color: kAccent), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Text('View All Courses'))),
        const SizedBox(height: 16),
        TextButton.icon(onPressed: () {}, icon: const Icon(Icons.bookmark_border, color: kGreen), label: const Text('Bookmark', style: TextStyle(color: kGreen))),
        const SizedBox(height: 16),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white54)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: Colors.white54)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white54)),
        ]),
      ]))),
    ));
  }
}
