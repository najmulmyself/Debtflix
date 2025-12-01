enum FailureCode {
  networkError,
  serverError,
  databaseError,
  validationError,
  unauthorized,
  notAuthenticated,
  tooManyRequests,
  conflict,
  cacheError,
  unknown,
}

enum AuthFailureCode {
  unauthorized,
  serverError,
  networkError,
  tooManyRequests,
  validationError,
  conflict,
  notAuthenticated,
}