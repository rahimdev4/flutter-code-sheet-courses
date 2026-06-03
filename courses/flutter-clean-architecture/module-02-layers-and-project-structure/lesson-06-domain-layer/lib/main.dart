// Domain layer: pure Dart, no Flutter imports needed
class Note {
  final String id;
  final String title;
  const Note({required this.id, required this.title});
}

abstract class NotesRepository {
  Future<List<Note>> getNotes();
}

class GetNotesUseCase {
  final NotesRepository repo;
  GetNotesUseCase(this.repo);
  Future<List<Note>> call() => repo.getNotes();
}

void main() {
  print('Domain layer: pure Dart, no dependencies!');
  print('Note entity + Repository interface + UseCase');
}
