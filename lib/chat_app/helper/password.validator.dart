abstract class PasswordValidator {
  String? isValid(String password);
}

class PasswordIsLongEnough implements PasswordValidator {
  @override
  String? isValid(String password) {
    return password.length >= 6 ? null : 'Password must be at least 6 characters long';
  }
}

class PasswordContainsUpperChar implements PasswordValidator {
  @override
  String? isValid(String password) {
    return password.contains(RegExp(r'[A-Z]'))
        ? null
        : 'Password must contain at least one uppercase letter';
  }
}

class PasswordContainsLowerChar implements PasswordValidator {
  @override
  String? isValid(String password) {
    return password.contains(RegExp(r'[a-z]'))
        ? null
        : 'Password must contain at least one lowercase letter';
  }
}

class PasswordContainsNumber implements PasswordValidator {
  @override
  String? isValid(String password) {
    return password.contains(RegExp(r'[0-9]')) ? null : 'Password must contain at least one number';
  }
}

class PasswordContainsSpecialChar implements PasswordValidator {
  @override
  String? isValid(String password) {
    return password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))
        ? null
        : 'Password must contain at least one special character';
  }
}

class PasswordValidationResult {
  String? message;
  PasswordValidationResult(
      {required List<PasswordValidator> validators, required String password}) {
    message = validators
        .map((validator) => validator.isValid(password))
        .firstWhere((message) => message != null, orElse: () => null);
  }
}
