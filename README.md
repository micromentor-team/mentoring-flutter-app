# MicroMentor Flutter App

This is MicroMentor's main Flutter application. 

## Getting Started

### Setting Up Local Backend

To set up a local backend you need access to `https://github.com/micromentor-team/mmdata`. 
Follow the ["Getting Started" instructions](https://github.com/micromentor-team/mmdata/blob/main/docs/getting-started.md).

## How to setup the flutter app :
 - Install the Flutter SDK
 - Install Android Studio
 - Install the Android Emulator
 - Install Xcode and command-line tools

Heres a link for official guidelines for mac setup: https://docs.flutter.dev/get-started/install/macos, 
includes all the links for SDK, Android studio, Xcode. For windows: https://flutter.dev/docs/get-started/install/windows

Note: To run the app on ios simulator or an Iphone, a mac is required due to apple code signing

### Clone the repo : https://github.com/micromentor-team/mm-flutter-app

#### Install dependencies
 - If using android studio, go to pubspec.yaml and click on pub get on top right to install all the dependencies 
 - Other way is to go to the terminal and to the root of the project and run `flutter pub get` manually.

#### Setup env
 - In the assets folder of your root of the project, create a .env file (assets/.env) and fill in the following values:  

`APP_GRAPHQL_URL=http://192.168.1.1:3000/mmdata/api/graphql`
`APP_SUBSCRIPTION_URL=ws://192.168.1.1:3000/mmdata/api/graphql`

Replace the Ip address with your local device IP address

### Build and run the app
- On android studio, click on the preferred platform (Chrome web browser, android simulator etc) and then click on Run `main.dart` button to build and the run the app on that platform. Shortcut : ^ + R or Control + R for mac.
