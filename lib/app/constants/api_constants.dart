class ApiConstants {
  ApiConstants._();

  // Base URL
  static const String baseUrl = 'https://api.moneymanager.com/v1';

  // Endpoints
  static const String auth = '/auth';
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';
  static const String logout = '/auth/logout';
  static const String forgotPassword = '/auth/forgot-password';
  static const String resetPassword = '/auth/reset-password';
  static const String changePassword = '/auth/change-password';

  static const String users = '/users';
  static const String userProfile = '/users/profile';
  static const String userSettings = '/users/settings';

  static const String transactions = '/transactions';
  static const String transactionCategories = '/transactions/categories';
  static const String transactionTags = '/transactions/tags';

  static const String accounts = '/accounts';
  static const String accountTypes = '/accounts/types';

  static const String budgets = '/budgets';
  static const String budgetCategories = '/budgets/categories';

  static const String goals = '/goals';
  static const String goalTransactions = '/goals/transactions';

  static const String analytics = '/analytics';
  static const String reports = '/reports';
  static const String summaries = '/summaries';
  static const String trends = '/trends';

  static const String notifications = '/notifications';
  static const String currencies = '/currencies';
  static const String exchangeRates = '/exchange-rates';

  // Headers
  static const String authorizationHeader = 'Authorization';
  static const String contentTypeHeader = 'Content-Type';
  static const String acceptHeader = 'Accept';
  static const String userAgentHeader = 'User-Agent';

  // Content Types
  static const String jsonContentType = 'application/json';
  static const String formDataContentType = 'multipart/form-data';

  // Query Parameters
  static const String pageParam = 'page';
  static const String limitParam = 'limit';
  static const String sortParam = 'sort';
  static const String orderParam = 'order';
  static const String searchParam = 'search';
  static const String filterParam = 'filter';
  static const String dateFromParam = 'date_from';
  static const String dateToParam = 'date_to';
  static const String categoryIdParam = 'category_id';
  static const String accountIdParam = 'account_id';
  static const String typeParam = 'type';

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);

  // Response codes
  static const int successCode = 200;
  static const int createdCode = 201;
  static const int noContentCode = 204;
  static const int badRequestCode = 400;
  static const int unauthorizedCode = 401;
  static const int forbiddenCode = 403;
  static const int notFoundCode = 404;
  static const int conflictCode = 409;
  static const int unprocessableEntityCode = 422;
  static const int internalServerErrorCode = 500;
  static const int serviceUnavailableCode = 503;
}