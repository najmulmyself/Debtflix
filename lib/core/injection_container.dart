import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Basic dependency injection configuration
  getIt.registerSingleton<LoggerService>(LoggerService());
}

class LoggerService {
  void log(String message) {
    print('[Logger] $message');
  }
}

// Helper function to get dependencies
T get<T extends Object>() {
  return getIt.get<T>();
}