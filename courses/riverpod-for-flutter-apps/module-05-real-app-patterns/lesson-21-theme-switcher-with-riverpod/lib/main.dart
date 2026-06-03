import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

final themeProvider = StateProvider<bool>((ref) => true); // true = dark

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: isDark ? kBg : Colors.grey[200],
        appBarTheme: AppBarTheme(backgroundColor: isDark ? kCard : Colors.blue, foregroundColor: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Switcher')),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
            onPressed: () => ref.read(themeProvider.notifier).state = !isDark,
            child: const Text('Toggle Theme'),
          ),
        ),
      ),
    );
  }
}
