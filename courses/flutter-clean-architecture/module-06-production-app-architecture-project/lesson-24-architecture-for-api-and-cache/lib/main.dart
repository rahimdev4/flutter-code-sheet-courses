class ApiClient { Future<List<Map<String, dynamic>>> get(String url) async { await Future.delayed(const Duration(milliseconds: 200)); return [{'id':'1','title':'Cached Note'}]; } }
class CacheStore { Map<String, dynamic>? _data; void save(String k, dynamic v) => _data = {'key':k,'value':v}; dynamic get(String k) => _data?['value']; }
class NotesRepo {
  final ApiClient api; final CacheStore cache;
  NotesRepo(this.api, this.cache);
  Future<List<Map<String,dynamic>>> getNotes() async {
    try { final d = await api.get('/notes'); cache.save('notes', d); return d; }
    catch (_) { return (cache.get('notes') as List<Map<String,dynamic>>?) ?? []; }
  }
}
void main() async {
  final repo = NotesRepo(ApiClient(), CacheStore());
  print(await repo.getNotes());
}
