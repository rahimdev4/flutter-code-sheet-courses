abstract class NotesRepo { Future<List<String>> getNotes(); }
class RealRepo implements NotesRepo { @override Future<List<String>> getNotes() async => ['Real data']; }
class FakeRepo implements NotesRepo { @override Future<List<String>> getNotes() async => ['Test data']; }
class GetNotes {
  final NotesRepo repo;
  GetNotes(this.repo);
  Future<List<String>> call() => repo.getNotes();
}
void main() async {
  // In tests, use FakeRepo
  final useCase = GetNotes(FakeRepo());
  print(await useCase.call()); // ['Test data']
  // In production, use RealRepo
  final prodUseCase = GetNotes(RealRepo());
  print(await prodUseCase.call()); // ['Real data']
}
