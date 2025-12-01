import 'failure_codes.dart';

class Failure {
  final String message;
  final FailureCode code;

  const Failure({
    required this.message,
    required this.code,
  });

  factory Failure.networkError(String message) {
    return Failure(
      message: message,
      code: FailureCode.networkError,
    );
  }

  factory Failure.serverError(String message) {
    return Failure(
      message: message,
      code: FailureCode.serverError,
    );
  }

  factory Failure.databaseError(String message) {
    return Failure(
      message: message,
      code: FailureCode.databaseError,
    );
  }

  factory Failure.validationError(String message) {
    return Failure(
      message: message,
      code: FailureCode.validationError,
    );
  }

  factory Failure.unauthorized(String message) {
    return Failure(
      message: message,
      code: FailureCode.unauthorized,
    );
  }

  factory Failure.notAuthenticated(String message) {
    return Failure(
      message: message,
      code: FailureCode.notAuthenticated,
    );
  }

  factory Failure.tooManyRequests(String message) {
    return Failure(
      message: message,
      code: FailureCode.tooManyRequests,
    );
  }

  factory Failure.conflict(String message) {
    return Failure(
      message: message,
      code: FailureCode.conflict,
    );
  }

  factory Failure.cacheError(String message) {
    return Failure(
      message: message,
      code: FailureCode.cacheError,
    );
  }

  factory Failure.unknown(String message) {
    return Failure(
      message: message,
      code: FailureCode.unknown,
    );
  }

  @override
  String toString() {
    switch (code) {
      case FailureCode.networkError:
        return 'Network Error';
      case FailureCode.serverError:
        return 'Server Error';
      case FailureCode.databaseError:
        return 'Database Error';
      case FailureCode.validationError:
        return 'Validation Error';
      case FailureCode.unauthorized:
        return 'Unauthorized';
      case FailureCode.notAuthenticated:
        return 'Not Authenticated';
      case FailureCode.tooManyRequests:
        return 'Too Many Requests';
      case FailureCode.conflict:
        return 'Conflict';
      case FailureCode.cacheError:
        return 'Cache Error';
      default:
        return 'Unknown Error';
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return other is Failure &&
          message == other.message &&
          code == other.code;
    }
    return false;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode;
}

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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return other is AuthFailure &&
          message == other.message &&
          code == other.code;
    }
    return false;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode;
}