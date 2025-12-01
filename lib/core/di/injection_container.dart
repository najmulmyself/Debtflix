import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_modules.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initDependencies',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  await getIt.initDependencies();
}

@InjectableInit(
  initializerName: 'initTestDependencies',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureTestDependencies() async {
  await getIt.initTestDependencies();
}