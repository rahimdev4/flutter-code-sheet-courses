class AnalyticsService {
  void logEvent(String name) { print('Analytics: $name logged'); }
}
class AuthService {
  Future<String?> getCurrentUserId() async => 'user_123';
}
void main() async {
  final auth = AuthService();
  final analytics = AnalyticsService();
  final uid = await auth.getCurrentUserId();
  analytics.logEvent('app_opened');
  print('User: $uid');
}
