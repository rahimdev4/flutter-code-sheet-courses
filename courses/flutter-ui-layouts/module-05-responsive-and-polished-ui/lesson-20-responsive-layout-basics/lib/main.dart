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
      appBar: AppBar(title: const Text('Responsive Layout'), backgroundColor: kCard, foregroundColor: Colors.white),
      body: LayoutBuilder(builder: (context, constraints) {
        final isWide = constraints.maxWidth > 600;
        return Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Width: ${constraints.maxWidth.toInt()}px', style: const TextStyle(color: kAccent, fontSize: 16)),
          Text(isWide ? 'Layout: Wide (Grid)' : 'Layout: Narrow (List)', style: const TextStyle(color: Colors.white54)),
          const SizedBox(height: 16),
          Expanded(child: isWide
            ? GridView.count(crossAxisCount: 3, crossAxisSpacing: 12, mainAxisSpacing: 12, children: List.generate(6, (i) => Container(decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)), child: Center(child: Text('Item ${i + 1}', style: const TextStyle(color: Colors.white))))))
            : ListView.builder(itemCount: 6, itemBuilder: (_, i) => Container(margin: const EdgeInsets.only(bottom: 8), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: kCard, borderRadius: BorderRadius.circular(12)), child: Text('Item ${i + 1}', style: const TextStyle(color: Colors.white)))),
          ),
        ]));
      }),
    ));
  }
}
