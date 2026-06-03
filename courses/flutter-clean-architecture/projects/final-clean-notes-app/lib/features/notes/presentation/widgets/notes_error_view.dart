import 'package:flutter/material.dart';
class NotesErrorView extends StatelessWidget {
  final String message;
  const NotesErrorView({super.key, required this.message});
  @override Widget build(BuildContext context) => Center(child: Text('Error: \$message', style: const TextStyle(color: Colors.red, fontSize: 16)));
}
