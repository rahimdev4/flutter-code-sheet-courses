abstract class NotesRepository {
  Future<List<String>> getNotes();
}
class NotesRepositoryImpl implements NotesRepository {
  @override Future<List<String>> getNotes() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return ['Note 1', 'Note 2', 'Note 3'];
  }
}
void main() async {
  final NotesRepository repo = NotesRepositoryImpl();
  final notes = await repo.getNotes();
  print('Notes: $notes');
}
