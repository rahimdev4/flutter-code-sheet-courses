import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/notes_provider.dart';
import '../widgets/empty_notes_view.dart';
import '../widgets/note_card.dart';
import '../widgets/notes_error_view.dart';
import 'add_note_screen.dart';

class NotesScreen extends ConsumerWidget {
  const NotesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNotes = ref.watch(notesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Clean Notes')),
      body: asyncNotes.when(
        data: (notes) => notes.isEmpty ? const EmptyNotesView() : ListView.builder(itemCount: notes.length, itemBuilder: (c, i) => NoteCard(note: notes[i], onDelete: () async { await ref.read(deleteNoteProvider).call(notes[i].id); ref.invalidate(notesProvider); })),
        loading: () => const Center(child: CircularProgressIndicator(color: AppColors.accent)),
        error: (e, st) => NotesErrorView(message: e.toString())),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await Navigator.push(context, MaterialPageRoute(builder: (_) => const AddNoteScreen()));
        ref.invalidate(notesProvider);
      }, child: const Icon(Icons.add)));
  }
}
