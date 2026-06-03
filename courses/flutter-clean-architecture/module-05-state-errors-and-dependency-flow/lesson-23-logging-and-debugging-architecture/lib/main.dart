class AppLogger {
  static void info(String layer, String msg) => print('ℹ️ [$layer] $msg');
  static void error(String layer, String msg) => print('❌ [$layer] $msg');
}
void main() {
  AppLogger.info('Data', 'Fetching notes from remote...');
  AppLogger.info('Data', 'Got 3 notes');
  AppLogger.info('Domain', 'GetNotesUseCase called');
  AppLogger.info('Presentation', 'Rendering 3 notes');
  AppLogger.error('Data', 'Network timeout');
}
