import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/notes_local_data_source.dart';
import '../../data/datasources/notes_remote_data_source.dart';
import '../../data/repositories/notes_repository_impl.dart';
import '../../domain/entities/note.dart';
import '../../domain/usecases/add_note.dart';
import '../../domain/usecases/delete_note.dart';
import '../../domain/usecases/get_notes.dart';

final remoteProvider = Provider((ref) => NotesRemoteDataSource());
final localProvider = Provider((ref) => NotesLocalDataSource());
final repoProvider = Provider((ref) => NotesRepositoryImpl(remote: ref.read(remoteProvider), local: ref.read(localProvider)));
final getNotesProvider = Provider((ref) => GetNotesUseCase(ref.read(repoProvider)));
final addNoteProvider = Provider((ref) => AddNoteUseCase(ref.read(repoProvider)));
final deleteNoteProvider = Provider((ref) => DeleteNoteUseCase(ref.read(repoProvider)));
final notesProvider = FutureProvider<List<Note>>((ref) async {
  final result = await ref.read(getNotesProvider).call();
  if (result.isSuccess) return result.data!;
  throw Exception(result.failure?.message ?? 'Unknown error');
});
