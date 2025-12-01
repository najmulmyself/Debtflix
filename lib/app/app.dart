import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'core/services/di_service.dart';
import 'core/theme/app_theme.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DIService.instance<TransactionBloc>(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router.routerConfig,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Money Manager',
      ),
    );
  }
}