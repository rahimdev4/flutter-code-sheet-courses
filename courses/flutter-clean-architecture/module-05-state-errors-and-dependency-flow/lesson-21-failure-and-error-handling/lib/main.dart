class Failure { final String message; Failure(this.message); }
class Result<T> {
  final T? data; final Failure? failure;
  Result._({this.data, this.failure});
  factory Result.success(T d) => Result._(data: d);
  factory Result.error(Failure f) => Result._(failure: f);
  bool get isOk => failure == null;
}
Future<Result<List<String>>> getNotes() async {
  try { return Result.success(['Note 1', 'Note 2']); }
  catch (e) { return Result.error(Failure(e.toString())); }
}
void main() async {
  final result = await getNotes();
  if (result.isOk) print('Data: ${result.data}');
  else print('Error: ${result.failure?.message}');
}
