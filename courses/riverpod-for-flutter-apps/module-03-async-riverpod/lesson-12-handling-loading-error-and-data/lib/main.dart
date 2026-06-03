import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

final unstableApiProvider = FutureProvider<String>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  if (DateTime.now().second % 2 == 0) {
    throw Exception('Server crashed randomly!');
  }
  return 'Success Data!';
});

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(unstableApiProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Async States')),
        body: Center(
          child: asyncData.when(
            data: (data) => Text(data, style: const TextStyle(color: Colors.greenAccent, fontSize: 24)),
            loading: () => const CircularProgressIndicator(color: kAccent),
            error: (err, stack) => Text('$err', style: const TextStyle(color: Colors.redAccent, fontSize: 18)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: () => ref.invalidate(unstableApiProvider), // Force a reload
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
