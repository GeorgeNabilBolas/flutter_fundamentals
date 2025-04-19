abstract class EmailValidator {
  String? isValid(String email);
}

class EmailValidatorCheck implements EmailValidator {
  final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  @override
  String? isValid(String email) {
    if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address';
    }
  }
}

class EmailValidationResult {
  String? message;
  EmailValidationResult({required EmailValidator validator, required String email}) {
    message = validator.isValid(email);
  }
}
