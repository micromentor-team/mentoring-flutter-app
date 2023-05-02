# MicroMentor Flutter App

This is MicroMentor's main Flutter application. 

## Getting Started

### Set up the local backend

To set up a local backend you need access to `https://github.com/micromentor-team/mmdata`. 
Follow the ["Getting Started" instructions](https://github.com/micromentor-team/mmdata/blob/main/docs/getting-started.md).

### Install the Flutter development tools:

 - Install the Flutter SDK
 - Install Android Studio
 - Install the Android Emulator
 - Install Xcode and command-line tools

References:

* [Official setup guidelines for MacOS](https://docs.flutter.dev/get-started/install/macos) 
* [Official setup guidelines for Windows](https://flutter.dev/docs/get-started/install/windows)

Note: Running the app in an iOS simulator requires MacOS

### Clone mm-flutter-app

The sources to the Flutter app are located at: https://github.com/micromentor-team/mm-flutter-app

    git clone git@github.com:micromentor-team/mm-flutter-app.git

#### Install the dependencies
 
If you are using the Android Studio, open `pubspec.yaml` and click on `pub get` on top right to 
install all the dependencies.

Or run this in the terminal:

   `flutter pub get`

#### Set up the environment

Create the file `/assets/.env`. If you are connecting to a local backend, add these lines to the file:

    APP_GRAPHQL_URL="http://localhost:3000/mmdata/api/graphql"
    APP_SUBSCRIPTION_URL="ws://localhost:3000/mmdata/api/graphql"

But if you want to connect to a backend in the cloud please ask a co-worker for a valid `.env`.

### Build and run the app

In Android Studio, select a target platform (Chrome web browser, Android Simulator, etc.) 
and then click on the `Run main.dart` button to build and the run the app on that platform.
Shortcut : `Control + R` (MacOS).

### Run Widgetbook

In Android Studio, select `Edit Configurations` in the Run menu.
Copy configurations of main.dart and edit name as `widgetbook`.
Edit `Dart entrypoint` to the path of your Widgetbook’s main.dart.
For eg `mm_flutter_app/widgetbook/main.dart` at the place of `mm_flutter_app/lib/main.dart`.

Or to run from terminal, execute `flutter run -t widgetbook/main.dart`.

### Run Tests

In Android Studio, Open the test.dart file.
Select the Run menu.
Click the Run 'tests in counter_test.dart' option.
