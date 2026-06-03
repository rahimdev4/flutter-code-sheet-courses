import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// StateProvider allows the value to be changed from the UI
final isSwitchedProvider = StateProvider<bool>((ref) => false);

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the value
    final isSwitched = ref.watch(isSwitchedProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('StateProvider')),
        body: Center(
          child: SwitchListTile(
            title: const Text('Toggle State', style: TextStyle(color: Colors.white)),
            value: isSwitched,
            activeColor: kAccent,
            // Access the .notifier to change the state
            onChanged: (val) => ref.read(isSwitchedProvider.notifier).state = val,
          ),
        ),
      ),
    );
  }
}
