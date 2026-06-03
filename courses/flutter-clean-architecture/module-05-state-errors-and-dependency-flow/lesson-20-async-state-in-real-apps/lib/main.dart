import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
final dataProvider = FutureProvider<String>((ref) async { await Future.delayed(const Duration(seconds: 2)); return 'Data loaded!'; });
void main() => runApp(const ProviderScope(child: MyApp()));
class MyApp extends ConsumerWidget { const MyApp({super.key}); @override Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(dataProvider);
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Async State')),
        body: async.when(data: (d) => Center(child: Text(d, style: const TextStyle(color: Colors.white, fontSize: 24))),
          loading: () => const Center(child: CircularProgressIndicator(color: kAccent)),
          error: (e, _) => Center(child: Text('Error: \$e', style: const TextStyle(color: Colors.red)))))); } }
