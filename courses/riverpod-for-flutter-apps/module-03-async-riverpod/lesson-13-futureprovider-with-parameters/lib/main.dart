import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

// Add .family to pass a parameter (e.g., an ID)
final userProvider = FutureProvider.family<String, int>((ref, id) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'User Info for ID: $id';
});

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Pass the parameter when watching
    final user1 = ref.watch(userProvider(101));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Provider.family')),
        body: Center(
          child: user1.when(
            data: (data) => Text(data, style: const TextStyle(color: Colors.white, fontSize: 24)),
            loading: () => const CircularProgressIndicator(),
            error: (err, stack) => Text('Error: $err'),
          ),
        ),
      ),
    );
  }
}
