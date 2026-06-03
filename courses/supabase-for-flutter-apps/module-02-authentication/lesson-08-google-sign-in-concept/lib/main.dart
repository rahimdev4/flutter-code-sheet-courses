import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Google Sign In')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Steps for Google OAuth:\n\n1. Enable Google provider in Supabase Auth\n2. Configure OAuth consent in Google Cloud\n3. Call supabase.auth.signInWithOAuth(OAuthProvider.google)\n4. Handle redirect URL\n\nSupabase handles the token exchange!', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
