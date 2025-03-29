import 'validator.dart';

/// A validator that checks if a string is a valid email address.
///
/// This validator performs basic email format validation by checking:
/// - The presence of exactly one @ symbol
/// - Non-empty local and domain parts
/// - Domain has at least one dot (.)
class EmailValidator extends Validator<String> {
  /// Creates a new email validator with the specified error message.
  ///
  /// [error] is the message to return when validation fails.
  const EmailValidator(this.error);

  /// The error message to return when validation fails.
  final String error;

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    final parts = value.split('@');

    if (parts.length != 2 || parts.first.isEmpty || parts.last.isEmpty) {
      return error;
    }

    final domainParts = parts.last.split('.');

    if (domainParts.length < 2 || domainParts.any((part) => part.isEmpty)) {
      return error;
    }

    return null;
  }
}
