// Standalone auth failure without external dependencies

class AuthFailure {
  final String message;
  final AuthFailureCode code;

  const AuthFailure({
    required this.message,
    required this.code,
  });

  factory AuthFailure.unauthorized(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.unauthorized,
    );
  }

  factory AuthFailure.serverError(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.serverError,
    );
  }

  factory AuthFailure.networkError(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.networkError,
    );
  }

  factory AuthFailure.tooManyRequests(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.tooManyRequests,
    );
  }

  factory AuthFailure.validationError(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.validationError,
    );
  }

  factory AuthFailure.conflict(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.conflict,
    );
  }

  factory AuthFailure.notAuthenticated(String message) {
    return AuthFailure(
      message: message,
      code: AuthFailureCode.notAuthenticated,
    );
  }

  @override
  String toString() {
    switch (code) {
      case AuthFailureCode.unauthorized:
        return 'Unauthorized';
      case AuthFailureCode.serverError:
        return 'Server Error';
      case AuthFailureCode.tooManyRequests:
        return 'Too Many Requests';
      case AuthFailureCode.conflict:
        return 'Email Already Exists';
      case AuthFailureCode.validationError:
        return 'Validation Error';
      case AuthFailureCode.networkError:
        return 'Network Error';
      default:
        return 'Unknown Error';
    }
  }
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