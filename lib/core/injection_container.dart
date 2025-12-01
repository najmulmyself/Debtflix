import 'package:get_it/get_it.dart';
import 'package:money_manager/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:money_manager/features/auth/domain/repositories/auth_repository.dart';
import 'package:money_manager/features/auth/domain/usecases/login_usecase.dart';
import 'package:money_manager/features/auth/domain/usecases/register_usecase.dart';
import 'package:money_manager/features/auth/domain/usecases/logout_usecase.dart';
import 'package:money_manager/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:money_manager/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:money_manager/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:money_manager/features/transactions/data/repositories/transaction_repository_impl.dart';
import 'package:money_manager/features/transactions/domain/repositories/transaction_repository.dart';
import 'package:money_manager/features/transactions/domain/usecases/get_transactions_usecase.dart';
import 'package:money_manager/features/transactions/domain/usecases/add_transaction_usecase.dart';
import 'package:money_manager/features/transactions/domain/usecases/update_transaction_usecase.dart';
import 'package:money_manager/features/transactions/domain/usecases/delete_transaction_usecase.dart';
import 'package:money_manager/features/transactions/data/datasources/transaction_local_data_source.dart';
import 'package:money_manager/features/budget/data/repositories/budget_repository_impl.dart';
import 'package:money_manager/features/budget/domain/repositories/budget_repository.dart';
import 'package:money_manager/features/budget/domain/usecases/get_budgets_usecase.dart';
import 'package:money_manager/features/budget/domain/usecases/create_budget_usecase.dart';
import 'package:money_manager/features/budget/domain/usecases/update_budget_usecase.dart';
import 'package:money_manager/features/budget/domain/usecases/delete_budget_usecase.dart';
import 'package:money_manager/features/budget/data/datasources/budget_local_data_source.dart';
import 'package:money_manager/features/analytics/data/repositories/analytics_repository_impl.dart';
import 'package:money_manager/features/analytics/domain/repositories/analytics_repository.dart';
import 'package:money_manager/features/analytics/domain/usecases/get_expense_summaries_usecase.dart';
import 'package:money_manager/features/analytics/domain/usecases/get_spending_over_time_usecase.dart';
import 'package:money_manager/features/analytics/domain/usecases/get_top_spending_categories_usecase.dart';
import 'package:money_manager/features/analytics/domain/usecases/get_monthly_report_usecase.dart';
import 'package:money_manager/features/goals/data/repositories/savings_goal_repository_impl.dart';
import 'package:money_manager/features/goals/domain/repositories/savings_goal_repository.dart';
import 'package:money_manager/features/goals/domain/usecases/create_savings_goal_usecase.dart';
import 'package:money_manager/features/goals/domain/usecases/update_savings_goal_usecase.dart';
import 'package:money_manager/features/goals/domain/usecases/delete_savings_goal_usecase.dart';
import 'package:money_manager/features/goals/domain/usecases/get_savings_goals_usecase.dart';
import 'package:money_manager/features/goals/domain/usecases/mark_goal_completed_usecase.dart';
import 'package:money_manager/features/goals/data/datasources/savings_goal_local_data_source.dart';
import 'package:money_manager/data/datasources/local/app_database.dart';
import 'package:money_manager/data/repositories/local/local_data_repository_impl.dart';
import 'package:money_manager/domain/repositories/local/local_data_repository.dart';
import 'package:money_manager/data/repositories/remote/remote_data_repository_impl.dart';
import 'package:money_manager/domain/repositories/remote/remote_data_repository.dart';

final getIt = GetIt.instance();

Future<void> initializeDependencies() async {
  // Database
  final database = await $AppDatabase.build(inMemory: false);
  getIt.registerLazySingleton<AppDatabase>(() => database);

  // Local Data Sources
  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(database: database),
  );
  getIt.registerLazySingleton<TransactionLocalDataSource>(
    () => TransactionLocalDataSourceImpl(database: database),
  );
  getIt.registerLazySingleton<BudgetLocalDataSource>(
    () => BudgetLocalDataSourceImpl(database: database),
  );
  getIt.registerLazySingleton<SavingsGoalLocalDataSource>(
    () => SavingsGoalLocalDataSourceImpl(database: database),
  );

  // Remote Data Sources (mock implementations for now)
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  getIt.registerSingleton<RemoteDataRepository>(
    RemoteDataRepositoryImpl(
      getIt<AuthRemoteDataSource>(),
    ),
  );

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      localDataSource: getIt<AuthLocalDataSource>(),
      remoteDataSource: getIt<AuthRemoteDataSource>(),
    ),
  );
  getIt.registerLazySingleton<TransactionRepository>(
    () => TransactionRepositoryImpl(
      localDataSource: getIt<TransactionLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<BudgetRepository>(
    () => BudgetRepositoryImpl(
      localDataSource: getIt<BudgetLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<AnalyticsRepository>(
    () => AnalyticsRepositoryImpl(
      localDataSource: getIt<TransactionLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<SavingsGoalRepository>(
    () => SavingsGoalRepositoryImpl(
      localDataSource: getIt<SavingsGoalLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<LocalDataRepository>(
    () => LocalDataRepositoryImpl(database: database),
  );

  // Use Cases - Auth
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(getIt<AuthRepository>()),
  );
  getIt.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(getIt<AuthRepository>()),
  );

  // Use Cases - Transactions
  getIt.registerLazySingleton<GetTransactionsUseCase>(
    () => GetTransactionsUseCase(getIt<TransactionRepository>()),
  );
  getIt.registerLazySingleton<AddTransactionUseCase>(
    () => AddTransactionUseCase(getIt<TransactionRepository>()),
  );
  getIt.registerLazySingleton<UpdateTransactionUseCase>(
    () => UpdateTransactionUseCase(getIt<TransactionRepository>()),
  );
  getIt.registerLazySingleton<DeleteTransactionUseCase>(
    () => DeleteTransactionUseCase(getIt<TransactionRepository>()),
  );

  // Use Cases - Budget
  getIt.registerLazySingleton<GetBudgetsUseCase>(
    () => GetBudgetsUseCase(getIt<BudgetRepository>()),
  );
  getIt.registerLazySingleton<CreateBudgetUseCase>(
    () => CreateBudgetUseCase(getIt<BudgetRepository>()),
  );
  getIt.registerLazySingleton<UpdateBudgetUseCase>(
    () => UpdateBudgetUseCase(getIt<BudgetRepository>()),
  );
  getIt.registerLazySingleton<DeleteBudgetUseCase>(
    () => DeleteBudgetUseCase(getIt<BudgetRepository>()),
  );

  // Use Cases - Analytics
  getIt.registerLazySingleton<GetExpenseSummariesUseCase>(
    () => GetExpenseSummariesUseCase(getIt<AnalyticsRepository>()),
  );
  getIt.registerLazySingleton<GetSpendingOverTimeUseCase>(
    () => GetSpendingOverTimeUseCase(getIt<AnalyticsRepository>()),
  );
  getIt.registerLazySingleton<GetTopSpendingCategoriesUseCase>(
    () => GetTopSpendingCategoriesUseCase(getIt<AnalyticsRepository>()),
  );
  getIt.registerLazySingleton<GetMonthlyReportUseCase>(
    () => GetMonthlyReportUseCase(getIt<AnalyticsRepository>()),
  );

  // Use Cases - Goals
  getIt.registerLazySingleton<CreateSavingsGoalUseCase>(
    () => CreateSavingsGoalUseCase(getIt<SavingsGoalRepository>()),
  );
  getIt.registerLazySingleton<UpdateSavingsGoalUseCase>(
    () => UpdateSavingsGoalUseCase(getIt<SavingsGoalRepository>()),
  );
  getIt.registerLazySingleton<DeleteSavingsGoalUseCase>(
    () => DeleteSavingsGoalUseCase(getIt<SavingsGoalRepository>()),
  );
  getIt.registerLazySingleton<GetSavingsGoalsUseCase>(
    () => GetSavingsGoalsUseCase(getIt<SavingsGoalRepository>()),
  );
  getIt.registerLazySingleton<MarkGoalCompletedUseCase>(
    () => MarkGoalCompletedUseCase(getIt<SavingsGoalRepository>()),
  );
}

T get<T extends Object>() {
  return getIt.get<T>();
}