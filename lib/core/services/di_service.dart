import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../bloc/simple_transaction_bloc.dart';

@injectable
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
    // BLoCs
    _getIt.registerLazySingleton<TransactionBloc>(() => TransactionBloc(
          CreateTransactionUseCase(DIService.get<CreateTransactionUseCase>()),
        ));
  }
}