import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

// --- settings_provider.dart ---
class SettingsNotifier extends Notifier<bool> {
  @override
  bool build() => true;
}
final settingsProvider = NotifierProvider<SettingsNotifier, bool>(SettingsNotifier.new);
// ------------------------------


void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Organization')),
        body: const Center(
          child: Text('Keep the provider and the class in the same file!', style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
