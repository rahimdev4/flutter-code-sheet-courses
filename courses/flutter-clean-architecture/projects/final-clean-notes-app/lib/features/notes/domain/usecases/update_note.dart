import '../../../../core/errors/result.dart';
import '../repositories/notes_repository.dart';
class UpdateNoteUseCase {
  final NotesRepository repository;
  const UpdateNoteUseCase(this.repository);
  Future<Result<void>> call(String id, String title) => repository.updateNote(id, title);
}
