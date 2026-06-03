import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
Future<void> main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp(); runApp(const MyApp()); }
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Upload Images')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('Upload code:\n\nfinal ref = FirebaseStorage.instance\n  .ref("avatars/user123.png");\nawait ref.putFile(imageFile);\nfinal url = await ref.getDownloadURL();\n\nUse image_picker to get the file!', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'monospace'))))));
  }
}
