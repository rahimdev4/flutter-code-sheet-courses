import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/notes_provider.dart';

class AddNoteScreen extends ConsumerWidget {
  const AddNoteScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ctrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Add Note')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
        TextField(controller: ctrl, style: const TextStyle(color: Colors.white), decoration: const InputDecoration(hintText: 'Note title...', hintStyle: TextStyle(color: Colors.white54))),
        const SizedBox(height: 20),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppColors.accent, foregroundColor: AppColors.background), onPressed: () async {
          if (ctrl.text.isNotEmpty) { await ref.read(addNoteProvider).call(ctrl.text); if (context.mounted) Navigator.pop(context); }
        }, child: const Text('Save Note')),
      ])));
  }
}
