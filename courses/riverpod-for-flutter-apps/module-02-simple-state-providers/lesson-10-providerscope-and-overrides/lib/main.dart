import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

final valueProvider = Provider<String>((ref) => 'Default Value');

void main() {
  runApp(
    // We can override providers at the root or within nested ProviderScopes
    ProviderScope(
      overrides: [
        valueProvider.overrideWithValue('Overridden Root Value!')
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Provider Overrides')),
        body: Center(
          child: Text(value, style: const TextStyle(color: Colors.white, fontSize: 24)),
        ),
      ),
    );
  }
}
