import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// Mock Service
class ApiService {
  Future<String> fetchFact() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Flutter uses Dart!';
  }
}

final apiServiceProvider = Provider((ref) => ApiService());

class FactNotifier extends AsyncNotifier<String> {
  @override
  Future<String> build() async {
    return ref.read(apiServiceProvider).fetchFact();
  }

  Future<void> reload() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => ref.read(apiServiceProvider).fetchFact());
  }
}

final factProvider = AsyncNotifierProvider<FactNotifier, String>(FactNotifier.new);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncFact = ref.watch(factProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('API Pattern')),
        body: Center(
          child: asyncFact.when(
            data: (fact) => Text(fact, style: const TextStyle(color: kAccent, fontSize: 24)),
            loading: () => const CircularProgressIndicator(color: kAccent),
            error: (e, st) => Text('Error: $e'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kAccent, foregroundColor: kBg,
          onPressed: () => ref.read(factProvider.notifier).reload(),
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
