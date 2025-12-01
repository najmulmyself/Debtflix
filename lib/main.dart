import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_manager/app/theme/theme_service.dart';
import 'package:money_manager/features/auth/presentation/pages/login_page.dart';
import 'package:money_manager/features/transactions/presentation/pages/transaction_list_page.dart';
import 'package:money_manager/features/budget/presentation/pages/budget_overview_page.dart';
import 'package:money_manager/features/analytics/presentation/pages/analytics_page.dart';
import 'package:money_manager/features/goals/presentation/pages/savings_goals_page.dart';
import 'package:money_manager/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/core/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
  await configureDependencies();

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: ValueListenableBuilder<bool>(
        valueListenable: ThemeService.isDarkModeNotifier,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
            title: 'Money Manager',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: const SplashScreen(),
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/login':
                  return MaterialPageRoute(builder: (_) => const LoginPage());
                case '/transactions':
                  return MaterialPageRoute(
                    builder: (_) => const TransactionListPage(),
                  );
                case '/budgets':
                  return MaterialPageRoute(
                    builder: (_) => const BudgetOverviewPage(),
                  );
                case '/analytics':
                  return MaterialPageRoute(
                    builder: (_) => const AnalyticsPage(),
                  );
                case '/goals':
                  return MaterialPageRoute(
                    builder: (_) => const SavingsGoalsPage(),
                  );
                default:
                  return MaterialPageRoute(
                    builder: (_) => const SplashScreen(),
                  );
              }
            },
          );
        },
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    // Simulate loading time
    await Future.delayed(const Duration(seconds: 2));

    // Check if user is authenticated (this would be implemented with actual auth logic)
    const isAuthenticated = false; // Replace with actual auth check

    if (mounted) {
      if (isAuthenticated) {
        Navigator.pushReplacementNamed(context, '/transactions');
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_balance_wallet,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 24),
            Text(
              'Money Manager',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Manage your finances wisely',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
