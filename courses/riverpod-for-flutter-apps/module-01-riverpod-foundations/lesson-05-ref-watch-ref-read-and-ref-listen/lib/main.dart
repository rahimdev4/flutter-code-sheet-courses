import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

final counterProvider = StateProvider<int>((ref) => 0);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    // 1. ref.listen triggers callbacks without rebuilding (good for Snackbars, Navigation)
    ref.listen(counterProvider, (previous, next) {
      if (next == 5) {
        print('Counter hit 5!');
      }
    });

    // 2. ref.watch rebuilds the UI when the value changes
    final count = ref.watch(counterProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Watch, Read, Listen')),
        body: Center(
          child: Text('Count: $count', style: const TextStyle(color: Colors.white, fontSize: 32)),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent,
          foregroundColor: kBg,
          // 3. ref.read reads the value once without listening (use in buttons!)
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
