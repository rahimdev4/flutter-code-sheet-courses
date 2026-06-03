import '../../../../core/errors/result.dart';
import '../entities/note.dart';
/// Repository contract — domain layer defines WHAT, not HOW
abstract class NotesRepository {
  Future<Result<List<Note>>> getNotes();
  Future<Result<void>> addNote(String title);
  Future<Result<void>> updateNote(String id, String title);
  Future<Result<void>> deleteNote(String id);
}
