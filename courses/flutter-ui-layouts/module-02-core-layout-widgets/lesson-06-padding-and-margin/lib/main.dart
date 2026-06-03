import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('Padding & Margin'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(padding: EdgeInsets.all(16), child: Text('Padding = space INSIDE', style: TextStyle(color: kAccent, fontSize: 16, fontWeight: FontWeight.bold))),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)), child: const Text('20px padding inside', style: TextStyle(color: Colors.white)))),
        const SizedBox(height: 24),
        const Padding(padding: EdgeInsets.all(16), child: Text('Margin = space OUTSIDE', style: TextStyle(color: kGreen, fontSize: 16, fontWeight: FontWeight.bold))),
        Container(margin: const EdgeInsets.symmetric(horizontal: 32), padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)), child: const Text('32px margin outside', style: TextStyle(color: Colors.white))),
      ]),
    ));
  }
}
