import 'validator.dart';

/// A validator that ensures a value is not null or empty.
///
/// This validator checks for:
/// - Null values
/// - Empty strings
/// - Empty lists
///
/// Type parameter [T] represents the type of value being validated.
class RequiredValidator<T> extends Validator<T> {
  /// Creates a new required validator with the specified error message.
  ///
  /// [error] is the message to return when validation fails.
  const RequiredValidator(this.error);

  /// The error message to return when validation fails.
  final String error;

  @override
  String? validate(T? value) {
    if (value == null) {
      return error;
    }

    if (value is String && value.isEmpty) {
      return error;
    }

    if (value is List && value.isEmpty) {
      return error;
    }

    return null;
  }
}
