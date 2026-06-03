import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);

class AuthState extends ChangeNotifier {
  bool isLogged = false;
  void login() { isLogged = true; notifyListeners(); }
  void logout() { isLogged = false; notifyListeners(); }
}

void main() => runApp(ChangeNotifierProvider(create: (_) => AuthState(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const RootAuthScreen(),
    );
  }
}

class RootAuthScreen extends StatelessWidget {
  const RootAuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Determine which UI to show based on state
    final isLogged = context.watch<AuthState>().isLogged;
    
    return isLogged ? const DashboardScreen() : const LoginScreen();
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: kAccent, foregroundColor: kBg),
          onPressed: () => context.read<AuthState>().login(),
          child: const Text('Simulate Login'),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, foregroundColor: Colors.white),
          onPressed: () => context.read<AuthState>().logout(),
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
