abstract class Repo { Future<List<String>> getNotes(); }
class FakeRepo implements Repo { @override Future<List<String>> getNotes() async => ['A', 'B']; }
class GetNotesUseCase {
  final Repo repo;
  GetNotesUseCase(this.repo);
  Future<List<String>> call() => repo.getNotes();
}
void main() async {
  final useCase = GetNotesUseCase(FakeRepo());
  print('Notes: ${await useCase.call()}');
}
