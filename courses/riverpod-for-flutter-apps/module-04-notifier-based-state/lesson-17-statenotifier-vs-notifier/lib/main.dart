import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

final configProvider = Provider<String>((ref) => 'Dark Mode Config');

// In Notifier, we have access to 'ref' right out of the box!
class MyNotifier extends Notifier<String> {
  @override
  String build() {
    // We can read other providers safely here
    final config = ref.read(configProvider);
    return 'State loaded with: $config';
  }
}

final myProvider = NotifierProvider<MyNotifier, String>(MyNotifier.new);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Notifier Advantages')),
        body: Center(
          child: Text(ref.watch(myProvider), style: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
