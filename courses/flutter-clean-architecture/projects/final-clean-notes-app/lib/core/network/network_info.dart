/// Check network connectivity (mock for learning)
class NetworkInfo {
  Future<bool> get isConnected async => true; // Always online in mock
}
