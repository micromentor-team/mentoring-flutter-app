# MicroMentor Flutter App

This is MicroMentor's main Flutter application. 

## Getting Started

### Connecting To The Backend

Create the file `assets/.env` with this content:

    APP_GRAPHQL_URL=http://127.0.0.1:3000/mmdata/api/graphql
    APP_SUBSCRIPTION_URL=ws://127.0.0.1:3000/mmdata/api/graphql

Use the URL that was given to you. Or, in case you are running the
backend locally, use `http://127.0.0.1:3000/mmdata/api/graphql`.

### Setting Up Local Backend

To set up a local backend you need access to `https://github.com/micromentor-team/mmdata`. 
Follow the ["Getting Started" instructions](https://github.com/micromentor-team/mmdata/blob/main/docs/getting-started.md).

### Install Flutter

Follow ["Flutter installation guide"](https://docs.flutter.dev/get-started/install).

Ensure flutter is installed correctly by running `flutter doctor`


### Build and run the app

Clone this repo.

#### Install Dependencies
`cd mm-flutter-app`\
`flutter pub get`

#### Build and run the app

On a Mac by default `flutter run` will install and run the app on an iOS simulator.\
Or open the app in Android Studio or Visual Studio and run it from there.\
`open . -a Android\ Studio`
