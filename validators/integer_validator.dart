import 'validator.dart';

/// A validator that ensures a string value represents a valid integer.
///
/// This validator checks that:
/// - The value is not null
/// - The value is not empty
/// - The value can be parsed as an integer
class IntegerValidator extends Validator<String> {
  /// Creates a new integer validator with the specified error message.
  ///
  /// [error] is the message to return when validation fails.
  const IntegerValidator(this.error);

  /// The error message to return when validation fails.
  final String error;

  @override
  String? validate(String? value) {
    if (value == null) {
      return error;
    }

    if (value.isEmpty) {
      return error;
    }

    if (int.tryParse(value) == null) {
      return error;
    }

    return null;
  }
}
