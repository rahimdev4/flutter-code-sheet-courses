class AppFailure {
  final String message;
  const AppFailure(this.message);
  @override
  String toString() => 'AppFailure: \$message';
}
class ServerFailure extends AppFailure { const ServerFailure([super.message = 'Server error']); }
class CacheFailure extends AppFailure { const CacheFailure([super.message = 'Cache error']); }
