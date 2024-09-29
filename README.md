# Description

The goal of this method is to ensure that all required fields in a form are filled before sending data to a server when a button is clicked.

The data to be validated is declared in the State. For each text field that needs to be filled, an event corresponding to the state property is triggered in the onChanged method of the text field.

This event is then handled by the BLoC, which updates the corresponding property value by emitting a new state.

Additionally, an isFormValid method returns a boolean once all required fields are filled, such as when a non-null object or a non-empty string is provided.

The submit button is encapsulated within a BlocBuilder, which listens to the state based on the isFormValid method. If isFormValid returns true, the button is enabled (indicating that all required fields have been filled). Otherwise, it returns false, and the button remains disabled.

It’s important to note that this method is solely intended to ensure that all required fields are properly filled. It does not validate the format of the data (e.g., checking an email address format using a regex or verifying password length).

# Medium article

https://medium.com/@hqcfqdy/flutter-data-validation-with-bloc-c7be7dfdee37

# Dependencies
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [build_runner](https://pub.dev/packages/build_runner)
- [dart_mappable](https://pub.dev/packages/dart_mappable)
- [dart_mappable_builder](https://pub.dev/packages/dart_mappable)

# Code generation commands
```
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```
