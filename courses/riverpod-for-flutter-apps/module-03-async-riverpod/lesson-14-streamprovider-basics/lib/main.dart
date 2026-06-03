import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// Creates a stream that emits a number every second
final timerStreamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(const Duration(seconds: 1), (count) => count);
});

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncStream = ref.watch(timerStreamProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('StreamProvider')),
        body: Center(
          child: asyncStream.when(
            data: (count) => Text('Timer: $count', style: const TextStyle(color: kAccent, fontSize: 48, fontWeight: FontWeight.bold)),
            loading: () => const CircularProgressIndicator(color: kAccent),
            error: (err, stack) => Text('Error: $err'),
          ),
        ),
      ),
    );
  }
}
