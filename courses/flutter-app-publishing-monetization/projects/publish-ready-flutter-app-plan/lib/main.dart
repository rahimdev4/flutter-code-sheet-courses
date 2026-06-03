import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kCard = Color(0xFF0B1A2A);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBg, appBarTheme: const AppBarTheme(backgroundColor: kCard, foregroundColor: Colors.white)),
      home: const PublishChecklistScreen());
  }
}

class PublishChecklistScreen extends StatefulWidget {
  const PublishChecklistScreen({super.key});
  @override State<PublishChecklistScreen> createState() => _S();
}

class _S extends State<PublishChecklistScreen> {
  final Map<String, List<CheckItem>> _sections = {
    '🔧 Release': [
      CheckItem('App icon configured'), CheckItem('Splash screen set'), CheckItem('Version number set'),
      CheckItem('Release build tested'), CheckItem('Debug code removed'),
    ],
    '🏪 Play Console': [
      CheckItem('Store listing completed'), CheckItem('Screenshots uploaded'), CheckItem('Feature graphic uploaded'),
      CheckItem('Data Safety filled'), CheckItem('Content rating done'), CheckItem('Privacy policy URL added'),
    ],
    '🧪 Testing': [
      CheckItem('Internal testing done'), CheckItem('Closed testing (14 days)'), CheckItem('Feedback collected'),
      CheckItem('Bugs fixed'), CheckItem('Production access requested'),
    ],
    '💰 Monetization': [
      CheckItem('AdMob account ready'), CheckItem('Ad units created'), CheckItem('Test ads verified'),
      CheckItem('Real IDs set for release'), CheckItem('Premium plan defined'),
    ],
    '📈 ASO': [
      CheckItem('Title optimized'), CheckItem('Description with keywords'), CheckItem('Screenshots with captions'),
      CheckItem('Feature graphic polished'),
    ],
    '🚀 Launch': [
      CheckItem('Staged rollout configured'), CheckItem('Monitoring plan ready'), CheckItem('Social announcement prepared'),
      CheckItem('First 48h monitoring planned'),
    ],
  };

  @override Widget build(BuildContext context) {
    final total = _sections.values.expand((e) => e).length;
    final done = _sections.values.expand((e) => e).where((e) => e.done).length;
    return Scaffold(
      appBar: AppBar(title: const Text('Publish Checklist'), actions: [
        Center(child: Padding(padding: const EdgeInsets.only(right: 16), child: Text('$done/$total', style: const TextStyle(color: kGreen, fontSize: 16, fontWeight: FontWeight.bold))))
      ]),
      body: ListView(children: _sections.entries.map((section) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(padding: const EdgeInsets.fromLTRB(16, 16, 16, 8), child: Text(section.key, style: const TextStyle(color: kAccent, fontSize: 18, fontWeight: FontWeight.bold))),
        ...section.value.map((item) => CheckboxListTile(
          value: item.done, activeColor: kGreen, checkColor: kBg,
          title: Text(item.label, style: TextStyle(color: item.done ? Colors.white54 : Colors.white, decoration: item.done ? TextDecoration.lineThrough : null)),
          onChanged: (v) => setState(() => item.done = v ?? false),
        )),
        const Divider(color: Colors.white12),
      ])).toList()),
    );
  }
}

class CheckItem {
  final String label;
  bool done;
  CheckItem(this.label, {this.done = false});
}
