import 'app_failure.dart';
/// A simple Result type: either data or a failure.
class Result<T> {
  final T? data;
  final AppFailure? failure;
  const Result._({this.data, this.failure});
  factory Result.success(T data) => Result._(data: data);
  factory Result.error(AppFailure failure) => Result._(failure: failure);
  bool get isSuccess => failure == null;
}
