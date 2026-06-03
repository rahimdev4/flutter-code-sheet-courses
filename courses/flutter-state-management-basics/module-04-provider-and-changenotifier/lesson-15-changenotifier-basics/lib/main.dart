import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// 1. Create a State class
class CounterState extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners(); // 2. Tell UI to rebuild
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // 3. Listen to state
    final state = Provider.of<CounterState>(context);
    
    return Scaffold(
      appBar: AppBar(title: const Text('ChangeNotifier')),
      body: Center(
        child: Text('Count: ${state.count}', style: const TextStyle(color: Colors.white, fontSize: 32)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccent,
        foregroundColor: kBg,
        onPressed: () => state.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
