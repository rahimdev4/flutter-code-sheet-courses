import '../../../../core/errors/app_failure.dart';
import '../../../../core/errors/result.dart';
import '../../domain/entities/note.dart';
import '../../domain/repositories/notes_repository.dart';
import '../datasources/notes_local_data_source.dart';
import '../datasources/notes_remote_data_source.dart';
import '../models/note_model.dart';
class NotesRepositoryImpl implements NotesRepository {
  final NotesRemoteDataSource remote;
  final NotesLocalDataSource local;
  NotesRepositoryImpl({required this.remote, required this.local});

  @override
  Future<Result<List<Note>>> getNotes() async {
    try {
      final notes = await remote.fetchNotes();
      await local.cacheNotes(notes);
      return Result.success(notes);
    } catch (e) {
      final cached = await local.getCachedNotes();
      if (cached != null) return Result.success(cached);
      return Result.error(ServerFailure(e.toString()));
    }
  }
  @override Future<Result<void>> addNote(String title) async { try { await remote.addNote(title); return Result.success(null); } catch (e) { return Result.error(ServerFailure(e.toString())); } }
  @override Future<Result<void>> updateNote(String id, String title) async { try { await remote.updateNote(id, title); return Result.success(null); } catch (e) { return Result.error(ServerFailure(e.toString())); } }
  @override Future<Result<void>> deleteNote(String id) async { try { await remote.deleteNote(id); return Result.success(null); } catch (e) { return Result.error(ServerFailure(e.toString())); } }
}
