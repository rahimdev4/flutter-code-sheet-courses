abstract class Logger { void log(String msg); }
class ConsoleLogger implements Logger { @override void log(String msg) => print('[LOG] $msg'); }
class SilentLogger implements Logger { @override void log(String msg) {} }
class NotesService {
  final Logger logger;
  NotesService(this.logger); // Injected!
  void addNote(String title) { logger.log('Added: $title'); }
}
void main() {
  // Swap logger without changing NotesService
  final service = NotesService(ConsoleLogger());
  service.addNote('DI Example');
}
