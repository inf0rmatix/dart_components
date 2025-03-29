import 'validator.dart';

/// A validator that checks if a person's age falls within specified bounds at a given date.
///
/// This validator can check if a person's age is:
/// - Greater than or equal to a minimum age
/// - Less than or equal to a maximum age
///
/// The age is calculated at a specific date (either [maxAgeAt] or [minAgeAt]).
/// Note that [maxAge] and [minAge] cannot be used together.
class AgeValidator extends Validator<DateTime> {
  /// Creates a new age validator with the specified parameters.
  ///
  /// [maxAge] is the maximum allowed age (inclusive).
  /// [maxAgeAt] is the date at which to check the maximum age.
  /// [minAge] is the minimum allowed age (inclusive).
  /// [minAgeAt] is the date at which to check the minimum age.
  /// [error] is the message to return when validation fails.
  ///
  /// Throws an [ArgumentError] if:
  /// - [maxAge] and [minAge] are both provided
  /// - Neither [maxAgeAt] nor [minAgeAt] is provided
  const AgeValidator({
    this.maxAge,
    this.maxAgeAt,
    this.minAge,
    this.minAgeAt,
    required this.error,
  }) : assert(
         maxAge == null || minAge == null,
         'maxAge and minAge cannot be used together',
       ),
       assert(
         maxAgeAt != null || minAgeAt != null,
         'maxAgeAt or minAgeAt must be provided',
       );

  /// The minimum allowed age (inclusive).
  final int? minAge;

  /// The date at which to check the minimum age.
  final DateTime? minAgeAt;

  /// The maximum allowed age (inclusive).
  final int? maxAge;

  /// The date at which to check the maximum age.
  final DateTime? maxAgeAt;

  /// The error message to return when validation fails.
  final String error;

  @override
  String? validate(DateTime? value) {
    if (value == null) {
      return null;
    }

    final maxAge = this.maxAge;
    final minAge = this.minAge;

    final ageAt = maxAgeAt ?? minAgeAt;

    if (ageAt == null) {
      throw ArgumentError('maxAgeAt or minAgeAt must be provided');
    }

    final age = calculateAge(value, ageAt);

    if ((maxAge != null && age > maxAge) || (minAge != null && age < minAge)) {
      return error;
    }

    return null;
  }

  /// Calculates a person's age at a given date.
  ///
  /// [birthDate] is the person's date of birth.
  /// [ageAt] is the date at which to calculate the age.
  ///
  /// Returns the person's age as a whole number of years.
  static int calculateAge(DateTime birthDate, DateTime ageAt) {
    int age = ageAt.year - birthDate.year;

    if (ageAt.month < birthDate.month ||
        (ageAt.month == birthDate.month && ageAt.day < birthDate.day)) {
      age--;
    }

    return age;
  }
}
