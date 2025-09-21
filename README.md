<!-- markdownlint-disable MD024 -->

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

## Assembly Tool

This project includes an assembly tool for scaffolding new packages and applications.

### Available Builders

- **Design System Template**: Generates a Flutter package for a custom design system.
- **Flutter App Template**: Generates a new Flutter application with a workspace setup.

### Usage

To see a list of available commands, run:

```bash
make
```

or

```bash
make help
```

This will display a list of all available targets and their descriptions.

### Design System Template

A Flutter package template that provides a foundation for building custom design systems by encapsulating Flutter's Material widgets. This template makes it easy to create a consistent design language across your applications by wrapping standard widgets with your custom styling.

It also has handy shorthand factory functions like `Text.titleLarge` or `Text.bodyMedium`.

#### Usage

To generate a custom design system package:

1. From the repository root, run:

    ```bash
    make design_system
    ```

2. When prompted, enter your desired prefix (e.g., 'my' for MyButton, MyTextField, etc.)
3. The generated package will be available in the `/build` directory with all files and classes using your specified prefix

You can also specify the prefix directly:

```bash
make design_system PREFIX=my
```

The generated package in `/build` can be copied and used directly in your Flutter projects. It includes pre-configured widgets that follow your design system's specifications.

### Flutter App Template

A Flutter application template that provides a foundation for new projects with a pre-configured workspace. The workspace includes a main application and an API package, both configured to work together.

#### Usage

To generate a new Flutter application:

1. From the repository root, run:

    ```bash
    make flutter_app
    ```

2. When prompted, enter your project name (e.g., 'My Awesome App').
3. The generated project will be available in the `/build` directory.

You can also specify the project name directly:

```bash
make flutter_app NAME="My Awesome App"
```

The generated project in `/build` can be used as a starting point for your new Flutter application.
