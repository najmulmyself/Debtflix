import 'package:get_it/get_it.dart';

import '../bloc/simple_transaction_bloc.dart';

class DIService {
  static final GetIt _getIt = GetIt.instance;

  DIService._() {
    _configureDependencies();
  }

  static T get<T extends Object>() {
    return _getIt<T>();
  }

  static void reset() {
    _getIt.reset();
  }

  static void _configureDependencies() {
    // Services
    // BLoCs will be registered here
  }
}