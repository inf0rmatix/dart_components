# dart_components

Holds a mixture of Dart / Flutter code I use in most projects, might have a thing or two you'll find useful, too :)

## Validators

A collection of reusable validators for form validation and data validation. Each validator follows a simple interface and can be used independently or combined using the `MultiValidator`. I like to use them with Flutter's `FormField` widgets.
You can pass them to the `validator` parameter of the `FormField` widget since they are callable objects.

### Available Validators

- `RequiredValidator<T>` - Ensures a value is not null or empty (supports strings and lists)
- `EmailValidator` - Validates email address format
- `IntegerValidator` - Ensures a string represents a valid integer
- `MinimumValidator` - Ensures a number is greater than or equal to a minimum value
- `AgeValidator` - Validates a person's age against minimum/maximum bounds
- `MultiValidator<T>` - Combines multiple validators to run in sequence

### Example Usage

```dart
final validator = MultiValidator<String>([
    RequiredValidator('This field is required'),
    EmailValidator('Please enter a valid email'),
]);

final error = validator('example@email.com');

TextFormField(
    controller: _nameController,
    decoration: const InputDecoration(
        labelText: 'Plant Name',
        border: OutlineInputBorder(),
    ),
    validator: const RequiredValidator('Plant name is required').call,
);
```
