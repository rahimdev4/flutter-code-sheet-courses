abstract class AuthRepository { Future<String?> login(String email, String password); Future<void> logout(); }
class FakeAuthRepo implements AuthRepository {
  @override Future<String?> login(String e, String p) async => 'user_123';
  @override Future<void> logout() async {}
}
class LoginUseCase {
  final AuthRepository repo;
  LoginUseCase(this.repo);
  Future<String?> call(String e, String p) => repo.login(e, p);
}
void main() async {
  final useCase = LoginUseCase(FakeAuthRepo());
  final uid = await useCase.call('test@test.com', '123456');
  print('Logged in: $uid');
}
