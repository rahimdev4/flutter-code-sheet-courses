import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/note.dart';
class NoteCard extends StatelessWidget {
  final Note note; final VoidCallback onDelete;
  const NoteCard({super.key, required this.note, required this.onDelete});
  @override Widget build(BuildContext context) => Card(color: AppColors.card, margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6), child: ListTile(
    title: Text(note.title, style: const TextStyle(color: Colors.white)),
    subtitle: Text(DateFormatter.format(note.createdAt), style: const TextStyle(color: Colors.white54, fontSize: 12)),
    trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.redAccent), onPressed: onDelete)));
}
