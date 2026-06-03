import '../../../../core/errors/result.dart';
import '../entities/note.dart';
import '../repositories/notes_repository.dart';
class GetNotesUseCase {
  final NotesRepository repository;
  const GetNotesUseCase(this.repository);
  Future<Result<List<Note>>> call() => repository.getNotes();
}
