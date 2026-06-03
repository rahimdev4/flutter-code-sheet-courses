import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
class FakeRepo { Future<List<String>> getNotes() async => ['Riverpod Note 1', 'Riverpod Note 2']; }
final repoProvider = Provider((ref) => FakeRepo());
final notesProvider = FutureProvider<List<String>>((ref) => ref.read(repoProvider).getNotes());
void main() => runApp(const ProviderScope(child: MyApp()));
class MyApp extends ConsumerWidget { const MyApp({super.key}); @override Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesProvider);
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Riverpod + Clean')),
        body: notes.when(data: (d) => ListView(children: d.map((n) => ListTile(title: Text(n, style: const TextStyle(color: Colors.white)))).toList()),
          loading: () => const Center(child: CircularProgressIndicator(color: kAccent)), error: (e, _) => Center(child: Text('\$e'))))); } }
