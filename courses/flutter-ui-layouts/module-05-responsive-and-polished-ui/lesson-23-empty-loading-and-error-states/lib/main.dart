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
    return const MaterialApp(debugShowCheckedModeBanner: false, home: StatesDemo());
  }
}
class StatesDemo extends StatefulWidget {
  const StatesDemo({super.key});
  @override
  State<StatesDemo> createState() => _StatesDemoState();
}
class _StatesDemoState extends State<StatesDemo> {
  int _state = 0; // 0=empty, 1=loading, 2=error, 3=success
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(title: const Text('UI States'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Tab('Empty', 0), _Tab('Loading', 1), _Tab('Error', 2), _Tab('Success', 3),
        ])),
        Expanded(child: _buildState()),
      ]),
    );
  }
  Widget _Tab(String label, int val) => GestureDetector(
    onTap: () => setState(() => _state = val),
    child: Container(padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8), decoration: BoxDecoration(color: _state == val ? kAccent : kCard, borderRadius: BorderRadius.circular(20)),
      child: Text(label, style: TextStyle(color: _state == val ? Colors.white : Colors.white54, fontSize: 13))),
  );
  Widget _buildState() {
    switch (_state) {
      case 0: return const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.inbox, size: 64, color: Colors.white24), SizedBox(height: 16), Text('No lessons yet', style: TextStyle(color: Colors.white38, fontSize: 16))]));
      case 1: return const Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CircularProgressIndicator(color: kAccent), SizedBox(height: 16), Text('Loading...', style: TextStyle(color: Colors.white54))]));
      case 2: return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Icon(Icons.error_outline, size: 64, color: Colors.redAccent), const SizedBox(height: 16), const Text('Something went wrong', style: TextStyle(color: Colors.white54, fontSize: 16)), const SizedBox(height: 12), ElevatedButton(onPressed: () => setState(() => _state = 3), style: ElevatedButton.styleFrom(backgroundColor: kAccent), child: const Text('Retry', style: TextStyle(color: Colors.white)))]));
      default: return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.check_circle, size: 64, color: kGreen), const SizedBox(height: 16), const Text('Data loaded!', style: TextStyle(color: Colors.white, fontSize: 16))]));
    }
  }
}
