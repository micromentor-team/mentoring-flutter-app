# Open Source Mentoring Flutter App

This Flutter based application was started as part of a 6-month Google.org
Fellowship project in collaboration with
[MicroMentor](https://www.micromentor.org). The Fellowship project started April
1st, 2023 and ended October 31st. The final commit from the Google Fellows is
tagged with
[final-fellowship-commit](https://github.com/micromentor-team/mentoring-flutter-app/releases/tag/final-fellowship-commit).

After the Fellowship project, MicroMentor further worked on app. This happens in
another, private git repository. MicroMentor will periodically update this
repository.

## Getting Started

### Backend (Server)

The app needs a backend that provides it with the business data. The
communication between app and backend uses [GraphQL](https://graphql.org/)
through an HTTP(S) connection. The basic principle of this is simple: The app
sends POST requests in the form of JSON text and receives the response from the
backend, again as JSON text. To configure this, a single URL - that of the
backend's GraphQL API root URL - is needed. There is one more component to the
communication: subscriptions that are based on HTTP websocket connections.
Subscriptions allow the backend to notify the app of events, again using GraphQL
to format those event messages.

The app won't be functional without having been connected to a backend using the
two environment variables `APP_GRAPHQL_URL` and `APP_SUBSCRIPTION_URL`. If you
run the app locally in a developer environment, specify those two variables in
`assets/.env`:

    APP_GRAPHQL_URL="http://localhost:4000/mmdata/api/graphql"
    APP_SUBSCRIPTION_URL="ws://localhost:4000/mmdata/api/graphql"

This project comes with a Node.js Express based mock backend, `mm-mock-server`.
The mock server is the easiest to get this app running. However, MicroMentor is
not using, or updating, `mm-mock-server` and commits to the app after the
Fellowship Project may break the integration with `mm-mock-server`. If you run
into issues with the app connecting to the `mm-mock-server` and you want to run
the app in its state at the end of the Fellowship Project (where the app and the
mock backend were fully compatible), use the git tag
[final-fellowship-commit](https://github.com/micromentor-team/mentoring-flutter-app/releases/tag/final-fellowship-commit).

### Install the Flutter development environment and tools

This assumes you are using a Mac computer. You can also use a Linux or Windows
computer, but most of the developers on this project use MacOS computers that
allowed us to run the App in an iOS simulator.

1.  Install Xcode and command-line tools in the Apple App Store

2.  If you are using a MacOS computer with an Apple Silicon CPU, you may have to
    install Rosetta 2: `softwareupdate --install-rosetta`.

3.  [Install the Flutter SDK](https://docs.flutter.dev/get-started/install)

4.  [Install Android
    Studio](https://developer.android.com/studio?gclid=EAIaIQobChMImt-so7DX_gIVYotoCR3K4wxfEAAYASAAEgJTUvD_BwE&gclsrc=aw.ds)

Note: Running the app in an iOS simulator requires macOS

### Clone mentoring-flutter-app

The sources to the Flutter app are located at:
<https://github.com/micromentor-team/mm-flutter-app>

    git clone git@github.com:micromentor-team/mm-flutter-app.git

#### Install the dependencies

If you are using the Android Studio, open `pubspec.yaml` and click on `pub get`
on top right to install all the dependencies.

Or run this in the terminal:

`flutter pub get`

#### Set up the environment

If you followed the instructions of the "Backend (Server) paragraph, you already
have an environment file at `/assets/.env`. Otherwise, ask a co-worker for a
valid `.env` file.

#### Connect Firebase account

This app uses Firebase services, and therefore requires setting up an active
account with the following services enabled:

- Crashlytics
- Analytics
- Google Cloud Messaging

If you haven't been given access to an existing Firebase account by a co-worker,
you can create a free Firebase account and use that.

The Android and iOS projects already contain the necessary configuration for
using Firebase, but the files that contain the API key are not included in the
repository (added to .gitignore). The following procedure allows you to log into
your Firebase account and regenerate these files in your environment:

1.  Install [Firebase
    CLI](https://firebase.google.com/docs/cli?authuser=0#install_the_firebase_cli).

2.  Run the `firebase login` command to authenticate to your Firebase account.
    Ensure there are no errors before moving to the next step.

3.  Install the FlutterFire CLI by running the following command:
    `dart pub global activate flutterfire_cli`

4.  Run the following command from the root directory of the Flutter project:
    `flutterfire configure --project=micromentor-d72ff`. This command will
    connect your Firebase project to your local development environment by
    generating necessary files. Your Firebase project ID (micromentor-d72ff) can
    be found in the Firebase console.

5.  In the FlutterFire configuration prompt, make sure to select: **Android**,
    **iOS**, and **Web**.

6.  Once the command completes, ensure the following files were generated in
    your environment:

    - /ios/firebase_app_id_file.json

    - /lib/firebase_options.dart

    - /android/app/google-services.json

    - /ios/Runner/GoogleService-Info.plist

7.  Run the app and confirm that there are no errors.

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

### GraphQL Codegen

The [GraphQL Codegen](https://pub.dev/documentation/graphql_codegen) package is
used to generate model classes from the GraphQL schema and operations. The
`lib/schema` directory contains a file with all operations to be used from the
app (queries and mutations), and another file with the full schema (enum, type
definitions, etc.).

Running the command `dart run build_runner build` from the root of the project
generates Dart classes inside the `lib/__generated/schema` directory. Import and
use these classes normally to represent input and output of the operations
defined. These model classes will already contain the correct fields, types, and
other useful functions to transform to/from JSON.

Rerun the code generation command every time the schema and operations change to
ensure that the model classes are up to date.
