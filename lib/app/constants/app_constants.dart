import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static const String appName = 'Money Manager';
  static const String appVersion = '1.0.0';

  // API Configuration
  static const String baseUrl = 'https://api.moneymanager.com';
  static const Duration apiTimeout = Duration(seconds: 30);

  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language_code';
  static const String onboardingKey = 'onboarding_completed';
  static const String biometricKey = 'biometric_enabled';

  // Animation Durations
  static const Duration animationDurationShort = Duration(milliseconds: 200);
  static const Duration animationDurationMedium = Duration(milliseconds: 300);
  static const Duration animationDurationLong = Duration(milliseconds: 500);

  // Debounce Times
  static const Duration searchDebounceTime = Duration(milliseconds: 500);
  static const Duration buttonDebounceTime = Duration(milliseconds: 300);

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 128;
  static const int maxUsernameLength = 50;
  static const int maxDescriptionLength = 500;

  // File sizes (in bytes)
  static const int maxImageSize = 5 * 1024 * 1024; // 5MB
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB

  // Cache durations
  static const Duration userCacheDuration = Duration(hours: 1);
  static const Duration transactionCacheDuration = Duration(minutes: 30);
  static const Duration categoryCacheDuration = Duration(days: 1);

  // Retry attempts
  static const int maxRetryAttempts = 3;

  // Notification channels
  static const String notificationChannelId = 'money_manager_notifications';
  static const String notificationChannelName = 'Money Manager Notifications';
  static const String notificationChannelDescription = 'Notifications for transactions, budgets, and goals';
}