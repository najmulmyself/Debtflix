import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import '../network/dio_client.dart';
import '../network/network_info.dart';
import '../storage/secure_storage.dart';
import '../storage/shared_preferences_helper.dart';
import '../../database/app_database.dart';
import '../../features/authentication/data/repositories/auth_repository_impl.dart';
import '../../features/authentication/domain/repositories/auth_repository.dart';
import '../../features/authentication/domain/usecases/login_usecase.dart';
import '../../features/authentication/domain/usecases/register_usecase.dart';
import '../../features/authentication/domain/usecases/logout_usecase.dart';
import '../../features/transactions/data/repositories/transaction_repository_impl.dart';
import '../../features/transactions/domain/repositories/transaction_repository.dart';
import '../../features/transactions/domain/usecases/get_transactions_usecase.dart';
import '../../features/transactions/domain/usecases/add_transaction_usecase.dart';
import '../../features/transactions/domain/usecases/update_transaction_usecase.dart';
import '../../features/transactions/domain/usecases/delete_transaction_usecase.dart';

@module
abstract class RegisterModule {
  // Network
  @lazySingleton
  Dio get dio => DioClient.instance;

  @lazySingleton
  NetworkInfo get networkInfo => NetworkInfoImpl();

  // Storage
  @lazySingleton
  SecureStorage get secureStorage => SecureStorageImpl();

  @lazySingleton
  SharedPreferencesHelper get sharedPreferences => SharedPreferencesHelperImpl();

  // Database
  @lazySingleton
  AppDatabase get database => AppDatabase();

  // Authentication Repository
  @lazySingleton
  AuthRepository get authRepository => AuthRepositoryImpl(
        dio: getIt(),
        secureStorage: getIt(),
        networkInfo: getIt(),
      );

  // Authentication Use Cases
  @factoryMethod
  LoginUseCase getLoginUseCase(AuthRepository repository) =>
      LoginUseCase(repository);

  @factoryMethod
  RegisterUseCase getRegisterUseCase(AuthRepository repository) =>
      RegisterUseCase(repository);

  @factoryMethod
  LogoutUseCase getLogoutUseCase(AuthRepository repository) =>
      LogoutUseCase(repository);

  // Transaction Repository
  @lazySingleton
  TransactionRepository get transactionRepository => TransactionRepositoryImpl(
        database: getIt(),
        dio: getIt(),
        networkInfo: getIt(),
      );

  // Transaction Use Cases
  @factoryMethod
  GetTransactionsUseCase getGetTransactionsUseCase(TransactionRepository repository) =>
      GetTransactionsUseCase(repository);

  @factoryMethod
  AddTransactionUseCase getAddTransactionUseCase(TransactionRepository repository) =>
      AddTransactionUseCase(repository);

  @factoryMethod
  UpdateTransactionUseCase getUpdateTransactionUseCase(TransactionRepository repository) =>
      UpdateTransactionUseCase(repository);

  @factoryMethod
  DeleteTransactionUseCase getDeleteTransactionUseCase(TransactionRepository repository) =>
      DeleteTransactionUseCase(repository);
}

@module
abstract class TestModule {
  @lazySingleton
  Dio get testDio => Dio();

  @lazySingleton
  NetworkInfo get testNetworkInfo => NetworkInfoImpl();

  @lazySingleton
  SecureStorage get testSecureStorage => SecureStorageImpl();

  @lazySingleton
  SharedPreferencesHelper get testSharedPreferences => SharedPreferencesHelperImpl();

  @lazySingleton
  AppDatabase get testDatabase => AppDatabase(inMemory: true);
}