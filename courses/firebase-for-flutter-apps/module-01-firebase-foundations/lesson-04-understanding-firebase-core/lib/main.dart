import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Firebase Core')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Firebase.initializeApp()\n\nMust be called FIRST in main().\nAfter this you can use:\n• FirebaseAuth.instance\n• FirebaseFirestore.instance\n• FirebaseStorage.instance', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'monospace'))))));
  }
}
