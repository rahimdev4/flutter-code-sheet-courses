import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Custom header
        Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: kCard),
          child: Row(children: [
            const CircleAvatar(radius: 22, backgroundColor: kAccent, child: Text('FL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
            const SizedBox(width: 12),
            const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Hello, Learner 👋', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Continue your journey', style: TextStyle(color: Colors.white54, fontSize: 13)),
            ])),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined, color: Colors.white)),
          ]),
        ),
        const Expanded(child: Center(child: Text('Screen content here', style: TextStyle(color: Colors.white54)))),
      ])),
    ));
  }
}
