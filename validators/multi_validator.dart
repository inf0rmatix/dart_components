import 'validator.dart';

/// A validator that combines multiple validators and applies them in sequence.
///
/// This validator runs each validator in the list until one fails or all pass.
/// The first validation error encountered is returned.
///
/// Type parameter [T] represents the type of value being validated.
class MultiValidator<T> extends Validator<T> {
  /// Creates a new multi validator with the specified list of validators.
  ///
  /// [validators] is the list of validators to apply in sequence.
  const MultiValidator(this.validators);

  /// The list of validators to apply in sequence.
  final List<Validator<T>> validators;

  @override
  String? validate(T? value) {
    for (final validator in validators) {
      final error = validator.validate(value);

      if (error != null) {
        return error;
      }
    }

    return null;
  }
}
