import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

// 1. Create a Notifier class
class HelloNotifier extends Notifier<String> {
  // 2. Override build to set the initial state
  @override
  String build() {
    return 'Hello from Notifier!';
  }
  
  // 3. Add methods to mutate state
  void updateMessage(String newMsg) {
    state = newMsg; // setting state automatically notifies listeners!
  }
}

// 4. Create a NotifierProvider
final helloProvider = NotifierProvider<HelloNotifier, String>(HelloNotifier.new);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Notifier')),
        body: Center(
          child: Text(ref.watch(helloProvider), style: const TextStyle(color: Colors.white, fontSize: 24)),
        ),
      ),
    );
  }
}
