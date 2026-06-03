import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

// 1. Declare a global provider
final greetingProvider = Provider<String>((ref) {
  return 'Hello Riverpod!';
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// 2. Extend ConsumerWidget instead of StatelessWidget
class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. Read the provider value using ref.watch
    final greeting = ref.watch(greetingProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('First Provider')),
        body: Center(
          child: Text(greeting, style: const TextStyle(color: Colors.white, fontSize: 32)),
        ),
      ),
    );
  }
}
