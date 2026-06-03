import '../../../../core/errors/result.dart';
import '../repositories/notes_repository.dart';
class AddNoteUseCase {
  final NotesRepository repository;
  const AddNoteUseCase(this.repository);
  Future<Result<void>> call(String title) => repository.addNote(title);
}
