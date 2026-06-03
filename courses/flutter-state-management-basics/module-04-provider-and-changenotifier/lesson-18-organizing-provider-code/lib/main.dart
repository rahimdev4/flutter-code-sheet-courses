import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);

class AuthState extends ChangeNotifier { bool isLogged = false; }
class ThemeState extends ChangeNotifier { bool isDark = true; }

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthState()),
        ChangeNotifierProvider(create: (_) => ThemeState()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const MultiScreen(),
    );
  }
}

class MultiScreen extends StatelessWidget {
  const MultiScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthState>();
    final theme = context.watch<ThemeState>();

    return Scaffold(
      appBar: AppBar(title: const Text('MultiProvider')),
      body: Center(
        child: Text(
          'Logged: ${auth.isLogged} | Dark: ${theme.isDark}',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
