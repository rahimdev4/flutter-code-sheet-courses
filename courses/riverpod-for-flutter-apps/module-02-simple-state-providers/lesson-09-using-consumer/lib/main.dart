import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

final countProvider = StateProvider<int>((ref) => 0);

void main() => runApp(const ProviderScope(child: MyApp()));

// This is a normal StatelessWidget!
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Consumer Builder')),
        body: Center(
          // We wrap ONLY the text that needs to change in a Consumer
          child: Consumer(
            builder: (context, ref, child) {
              final count = ref.watch(countProvider);
              return Text('Count: $count', style: const TextStyle(color: Colors.white, fontSize: 32));
            },
          ),
        ),
        floatingActionButton: Consumer(
          builder: (context, ref, child) {
            return FloatingActionButton(
              backgroundColor: kAccent,
              foregroundColor: kBg,
              onPressed: () => ref.read(countProvider.notifier).state++,
              child: const Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
