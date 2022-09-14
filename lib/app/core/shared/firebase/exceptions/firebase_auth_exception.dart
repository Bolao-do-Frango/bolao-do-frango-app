class RegisterException implements Exception {
  final String message;

  RegisterException(this.message);
}

class LoginException implements Exception {
  final String message;

  LoginException(this.message);
}
