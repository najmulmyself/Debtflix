import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Basic dependency injection configuration
  // This will be expanded as more services are implemented

  // For now, just register a basic logger for testing
  getIt.registerSingleton<LoggerService>(LoggerService());
}

// Simple logger service for testing
class LoggerService {
  void log(String message) {
    print('[Logger] $message');
  }
}