#!/bin/bash
echo "Setting up my_app..."
flutter create . --org "com.example" --project-name "my_app"
flutter pub get
# flutter run build_runner if there is code generation
echo "Setup complete. You can now run 'flutter run'."
