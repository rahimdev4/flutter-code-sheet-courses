import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

final textProvider = Provider<String>((ref) => 'I am a ConsumerWidget!');

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const CustomScreen(),
    );
  }
}

// Inherit from ConsumerWidget and add WidgetRef to the build method
class CustomScreen extends ConsumerWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(textProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('ConsumerWidget')),
      body: Center(
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 24)),
      ),
    );
  }
}
