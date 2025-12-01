import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../app/constants/app_constants.dart';

abstract class SecureStorage {
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> removeToken();
  Future<void> clearAll();
}

@injectable
class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorageImpl() : _secureStorage = const FlutterSecureStorage();

  @override
  Future<String?> getToken() async {
    try {
      return await _secureStorage.read(key: AppConstants.tokenKey);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await _secureStorage.write(key: AppConstants.tokenKey, value: token);
    } catch (e) {
      // Handle error
    }
  }

  @override
  Future<void> removeToken() async {
    try {
      await _secureStorage.delete(key: AppConstants.tokenKey);
    } catch (e) {
      // Handle error
    }
  }

  @override
  Future<void> clearAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      // Handle error
    }
  }
}