import 'package:flutter/material.dart';
class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});
  @override Widget build(BuildContext context) => const Center(child: Text('No notes yet!', style: TextStyle(color: Colors.white54, fontSize: 18)));
}
