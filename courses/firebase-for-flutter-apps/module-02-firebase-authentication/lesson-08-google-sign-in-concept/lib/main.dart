import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Google Sign In')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Steps:\n\n1. Enable Google provider in Firebase Console\n2. Add google_sign_in package\n3. Get GoogleSignInAccount\n4. Get GoogleSignInAuthentication\n5. Create OAuthCredential\n6. Call signInWithCredential()\n\nFirebase handles the rest!', style: TextStyle(color: Colors.white, fontSize: 18))))));
  }
}
