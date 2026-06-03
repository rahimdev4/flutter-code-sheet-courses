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
      home: const StatefulNavDemo(),
    );
  }
}

class StatefulNavDemo extends StatefulWidget {
  const StatefulNavDemo({super.key});
  @override
  State<StatefulNavDemo> createState() => _StatefulNavDemoState();
}

class _StatefulNavDemoState extends State<StatefulNavDemo> {
  int _index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack')),
      body: IndexedStack(
        index: _index,
        children: const [
          CounterTab(),
          Center(child: Text('Tab 2', style: TextStyle(color: Colors.white))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: kCard,
        selectedItemColor: kAccent,
        unselectedItemColor: Colors.white54,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Empty'),
        ],
      ),
    );
  }
}

class CounterTab extends StatefulWidget {
  const CounterTab({super.key});
  @override
  State<CounterTab> createState() => _CounterTabState();
}
class _CounterTabState extends State<CounterTab> {
  int _c = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
        onPressed: () => setState(() => _c++),
        child: Text('Count: $_c (Switch tabs, state remains!)'),
      ),
    );
  }
}
