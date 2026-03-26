@echo off
echo Setting up my_app...
flutter create . --org "com.example" --project-name "my_app"
flutter pub get
echo Setup complete. You can now run 'flutter run'.
pause
