class RemoteSource { Future<List<String>> fetch() async { await Future.delayed(const Duration(milliseconds: 300)); return ['Remote A', 'Remote B']; } }
class LocalSource { List<String>? _cache; List<String>? get cached => _cache; void save(List<String> d) => _cache = d; }
class Repo {
  final RemoteSource remote; final LocalSource local;
  Repo(this.remote, this.local);
  Future<List<String>> getNotes() async {
    try { final data = await remote.fetch(); local.save(data); return data; }
    catch (_) { return local.cached ?? []; }
  }
}
void main() async {
  final repo = Repo(RemoteSource(), LocalSource());
  print(await repo.getNotes());
}
