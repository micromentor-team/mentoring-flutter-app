# MicroMentor Flutter App

This is MicroMentor's main Flutter application.

## Getting Started

### Set up the local backend

To set up a local backend you need access to
`https://github.com/micromentor-team/mmdata`. Follow the ["Getting Started"
instructions](https://github.com/micromentor-team/mmdata/blob/main/docs/getting-started.md).

### Install the Flutter development environment and tools

1. Install Xcode and command-line tools in the Apple App Store

2. Install Rosetta 2:

   softwareupdate --install-rosetta

3. [Install the Flutter SDK](https://docs.flutter.dev/get-started/install)

4. [Install Android
   Studio](https://developer.android.com/studio?gclid=EAIaIQobChMImt-so7DX_gIVYotoCR3K4wxfEAAYASAAEgJTUvD_BwE&gclsrc=aw.ds)

Note: Running the app in an iOS simulator requires macOS

### Clone mm-flutter-app

The sources to the Flutter app are located at:
<https://github.com/micromentor-team/mm-flutter-app>

    git clone git@github.com:micromentor-team/mm-flutter-app.git

#### Install the dependencies

If you are using the Android Studio, open `pubspec.yaml` and click on `pub get`
on top right to install all the dependencies.

Or run this in the terminal:

`flutter pub get`

#### Set up the environment

Create the file `/assets/.env`. If you are connecting to a local backend, add
these lines to the file:

    APP_GRAPHQL_URL="http://localhost:3000/mmdata/api/graphql"
    APP_SUBSCRIPTION_URL="ws://localhost:3000/mmdata/api/graphql"

But if you want to connect to a backend in the cloud please ask a co-worker for
a valid `.env`.

You may want to connect to the live backend:

    APP_GRAPHQL_URL="https://mm3-api.micromentor.org/mmdata/api/graphql"
    APP_SUBSCRIPTION_URL="wss://mm3-api.micromentor.org/mmdata/api/graphql"

#### Connect Firebase account

This app uses Firebase services, and therefore requires setting up an active
account with the following services enabled:

- Crashlytics
- Analytics

The Android and iOS projects already contain the necessary configuration for
using Firebase, but the files that contain the API key are not included in the
repository (added to gitignore). The following procedure allows you to log into
your Firebase account and regenerate these files in your environment:

1. Install [Firebase
    CLI](https://firebase.google.com/docs/cli?authuser=0#install_the_firebase_cli).

2. Run the `firebase login` command to authenticate to your Firebase account.
    Ensure there are no errors before moving to the next step.

3. Install the FlutterFire CLI by running the following command:
    `dart pub global activate flutterfire_cli`

4. Run the following command from the root directory of the Flutter project:
   `flutterfire configure --project=micromentor-d72ff`. This command will
   connect your Firebase project to your local development environment by
   generating necessary files. Your Firebase project ID (micromentor-d72ff) can
   be found in the Firebase console.

5. In the FlutterFire configuration prompt, make sure to select: **Android**,
   **iOS**, and **Web**.

6. Once the command completes, ensure the following files were generated in
   your environment:

   - /ios/firebase_app_id_file.json

   - /lib/firebase_options.dart

   - /android/app/google-services.json

   - /ios/Runner/GoogleService-Info.plist

7. Run the app and confirm that there are no errors.

If you encounter any problems during these steps, refer to the Firebase and
FlutterFire documentation.

#### Enable git hooks

Link contents of `.git-hooks` directory to `.git/hooks`:

    `cd .git/hooks/ && ln -sfn ../../.git-hooks/* .`

### Build and run the app

In Android Studio, select a target platform (Chrome web browser, Android
Simulator, etc.) and then click on the `Run main.dart` button to build and the
run the app on that platform. Shortcut : `Control + R` (macOS).

### Run Widgetbook

In Android Studio, select `Edit Configurations` in the Run menu. Copy
configurations of main.dart and edit name as `widgetbook`. Edit
`Dart entrypoint` to the path of your Widgetbook's main.dart. For e.g.
`mm_flutter_app/widgetbook/main.dart` at the place of
`mm_flutter_app/lib/main.dart`.

Or to run from terminal, execute `flutter run -t widgetbook/main.dart`.

### Run Tests

In Android Studio, Open the test.dart file. Select the Run menu. Click the Run
'tests in counter_test.dart' option.
