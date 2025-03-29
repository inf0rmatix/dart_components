import 'validator.dart';

/// A validator that ensures a string value represents a number greater than or equal to a minimum value.
///
/// This validator checks that:
/// - The value can be parsed as a number
/// - The parsed number is greater than or equal to the specified minimum value
class MinimumValidator extends Validator<String> {
  /// Creates a new minimum validator with the specified error message and minimum value.
  ///
  /// [error] is the message to return when validation fails.
  /// [minimum] is the minimum allowed value (inclusive).
  const MinimumValidator({required this.error, required this.minimum});

  /// The error message to return when validation fails.
  final String? error;

  /// The minimum allowed value (inclusive).
  final int minimum;

  @override
  String? validate(String? value) {
    final number = num.tryParse(value ?? '');

    if (number == null || number < minimum) {
      return error;
    }

    return null;
  }
}
