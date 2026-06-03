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
      home: const PropDrillingDemo(),
    );
  }
}

class PropDrillingDemo extends StatefulWidget {
  const PropDrillingDemo({super.key});
  @override
  State<PropDrillingDemo> createState() => _PropDrillingDemoState();
}

class _PropDrillingDemoState extends State<PropDrillingDemo> {
  // State is held here, but needs to be passed down manually (prop drilling)
  int _globalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prop Drilling Pain')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => DeepScreen1(score: _globalScore, onUpdate: (val) => setState(() => _globalScore = val))
            ));
          },
          child: Text('Score: $_globalScore (Go Deeper)'),
        ),
      ),
    );
  }
}

// Child 1 has to pass it down
class DeepScreen1 extends StatelessWidget {
  final int score;
  final ValueChanged<int> onUpdate;
  const DeepScreen1({super.key, required this.score, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level 1')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kCard, foregroundColor: Colors.white),
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => DeepScreen2(score: score, onUpdate: onUpdate)
          )),
          child: const Text('Go Deeper'),
        ),
      ),
    );
  }
}

// Child 2 actually uses it. This becomes tedious!
class DeepScreen2 extends StatelessWidget {
  final int score;
  final ValueChanged<int> onUpdate;
  const DeepScreen2({super.key, required this.score, required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level 2')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () => onUpdate(score + 10),
          child: Text('Add 10 (Current: $score)'),
        ),
      ),
    );
  }
}
