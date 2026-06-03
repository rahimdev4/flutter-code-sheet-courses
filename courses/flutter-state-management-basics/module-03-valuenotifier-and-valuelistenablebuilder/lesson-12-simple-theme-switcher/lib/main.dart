import 'package:flutter/material.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

// Global state using ValueNotifier
final ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(true);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode,
      builder: (context, isDark, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: isDark ? kBg : Colors.white,
            appBarTheme: AppBarTheme(backgroundColor: isDark ? kCard : Colors.blue, foregroundColor: Colors.white),
            textTheme: TextTheme(bodyMedium: TextStyle(color: isDark ? Colors.white : Colors.black))
          ),
          home: const ThemeScreen(),
        );
      },
    );
  }
}

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Switcher')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => isDarkMode.value = !isDarkMode.value,
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
