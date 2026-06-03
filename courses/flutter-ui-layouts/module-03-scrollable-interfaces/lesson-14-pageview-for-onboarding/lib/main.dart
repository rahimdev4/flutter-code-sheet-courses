import 'package:flutter/material.dart';
const kBg = Color(0xFF050F19);
const kAccent = Color(0xFF00D9FF);
const kGreen = Color(0xFF00C896);
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const OnboardingScreen());
  }
}
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _page = 0;
  final _pages = [
    (Icons.school, 'Learn Flutter', 'Master Flutter UI from scratch', kAccent),
    (Icons.code, 'Practice Code', 'Every lesson has a runnable example', kGreen),
    (Icons.rocket_launch, 'Build Apps', 'Create real projects step by step', Colors.orange),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      body: SafeArea(child: Column(children: [
        Expanded(child: PageView.builder(
          controller: _controller, itemCount: _pages.length,
          onPageChanged: (i) => setState(() => _page = i),
          itemBuilder: (_, i) {
            final p = _pages[i];
            return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(p.$1, size: 80, color: p.$4),
              const SizedBox(height: 24),
              Text(p.$2, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(p.$3, style: const TextStyle(color: Colors.white54, fontSize: 16)),
            ]);
          },
        )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(3, (i) => Container(
          width: _page == i ? 24 : 8, height: 8, margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(color: _page == i ? kAccent : Colors.white24, borderRadius: BorderRadius.circular(4)),
        ))),
        const SizedBox(height: 32),
      ])),
    );
  }
}
