import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:money_manager/features/authentication/presentation/pages/auth_page.dart';
import 'package:money_manager/features/auth/presentation/pages/login_page.dart';
import 'package:money_manager/features/auth/presentation/pages/register_page.dart';
import 'package:money_manager/features/transactions/presentation/pages/transaction_list_page.dart';
import 'package:money_manager/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:money_manager/features/settings/presentation/pages/settings_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static const String initial = '/dashboard';

  static final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: initial,
    debugLogDiagnostics: true,
    routes: [
      // Authentication Routes
      GoRoute(
        path: '/',
        name: 'auth',
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterPage(),
      ),

      // Main App Routes
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const DashboardPage(),
      ),

      // Transaction Routes
      GoRoute(
        path: '/transactions',
        name: 'transactions',
        builder: (context, state) => const TransactionListPage(),
      ),

      // Settings Routes
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            const Text(
              'Page not found',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The page you\'re looking for doesn\'t exist.',
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFF757575),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/dashboard'),
              child: const Text('Go to Dashboard'),
            ),
          ],
        ),
      ),
    ),
  );

  static GoRouter get router => _router;

  // Navigation helpers
  static void goToDashboard(BuildContext context) {
    context.go('/dashboard');
  }

  static void goToTransactions(BuildContext context) {
    context.go('/transactions');
  }

  static void goToSettings(BuildContext context) {
    context.go('/settings');
  }

  static void goToLogin(BuildContext context) {
    context.go('/login');
  }

  static void goToRegister(BuildContext context) {
    context.go('/register');
  }
}