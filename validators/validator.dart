/// Abstract base class for all validators.
///
/// This class defines the contract that all validators must implement.
/// Validators are used to validate input values and return error messages
/// when validation fails.
///
/// Type parameter [T] represents the type of value being validated.
abstract class Validator<T> {
  const Validator();

  /// Validates the given value and returns an error message if validation fails.
  ///
  /// This is the callable interface of the validator, allowing it to be used
  /// as a function. Returns null if validation passes, or an error message
  /// string if validation fails.
  String? call(T? value) => validate(value);

  /// Core validation method that must be implemented by all validators.
  ///
  /// [value] is the value to validate. Can be null.
  /// Returns null if validation passes, or an error message string if validation fails.
  String? validate(T? value);
}
