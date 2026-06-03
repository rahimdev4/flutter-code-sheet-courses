import '../../../../core/errors/result.dart';
import '../repositories/notes_repository.dart';
class DeleteNoteUseCase {
  final NotesRepository repository;
  const DeleteNoteUseCase(this.repository);
  Future<Result<void>> call(String id) => repository.deleteNote(id);
}
