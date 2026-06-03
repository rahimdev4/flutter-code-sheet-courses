import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19); const kCard = Color(0xFF0B1A2A);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget { const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: Scaffold(appBar: AppBar(title: const Text('Security Rules')),
        body: const Padding(padding: EdgeInsets.all(16), child: Center(child: Text('rules_version = "2";\nservice cloud.firestore {\n  match /databases/{db}/documents {\n    match /notes/{noteId} {\n      allow read, write: if\n        request.auth != null &&\n        request.auth.uid == resource.data.userId;\n    }\n  }\n}', style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'monospace'))))));
  }
}
