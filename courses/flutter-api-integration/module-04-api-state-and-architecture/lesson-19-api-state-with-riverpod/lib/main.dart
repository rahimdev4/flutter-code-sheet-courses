import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class ApiService {
  Future<String> fetch() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/2'));
    return jsonDecode(res.body)['title'];
  }
}

final apiProvider = Provider((ref) => ApiService());

final dataProvider = FutureProvider<String>((ref) {
  return ref.read(apiProvider).fetch();
});

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(dataProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('API Riverpod')),
        body: Center(
          child: asyncData.when(
            data: (data) => Text(data, style: const TextStyle(color: Colors.white, fontSize: 20)),
            loading: () => const CircularProgressIndicator(color: kAccent),
            error: (e, st) => Text('Error', style: const TextStyle(color: Colors.red)),
          ),
        ),
      ),
    );
  }
}
