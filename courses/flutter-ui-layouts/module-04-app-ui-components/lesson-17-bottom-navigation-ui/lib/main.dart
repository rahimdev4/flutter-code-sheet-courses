import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: NavDemo());
  }
}
class NavDemo extends StatefulWidget {
  const NavDemo({super.key});
  @override
  State<NavDemo> createState() => _NavDemoState();
}
class _NavDemoState extends State<NavDemo> {
  int _index = 0;
  final _labels = ['Home', 'Courses', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      body: Center(child: Text(_labels[_index], style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index, onTap: (i) => setState(() => _index = i),
        backgroundColor: kCard, selectedItemColor: kAccent, unselectedItemColor: Colors.white38,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
