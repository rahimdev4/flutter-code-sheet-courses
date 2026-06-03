import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class ScoreState extends ChangeNotifier {
  int score = 0;
  void addPoint() { score++; notifyListeners(); }
}

void main() => runApp(ChangeNotifierProvider(create: (_) => ScoreState(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const ReadWatchScreen(),
    );
  }
}

class ReadWatchScreen extends StatelessWidget {
  const ReadWatchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // context.watch() rebuilds the widget when state changes
    final score = context.watch<ScoreState>().score;

    return Scaffold(
      appBar: AppBar(title: const Text('Watch vs Read')),
      body: Center(
        child: Text('Score: $score', style: const TextStyle(color: Colors.white, fontSize: 32)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        // context.read() accesses methods WITHOUT rebuilding
        onPressed: () => context.read<ScoreState>().addPoint(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
