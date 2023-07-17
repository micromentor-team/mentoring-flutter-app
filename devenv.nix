{ pkgs, ... }:

let
  androidenv       = android-pkgs.androidenv.override {
    licenseAccepted = true;
  };
  android-comp     = androidenv.composeAndroidPackages {
    buildToolsVersions = [ "30.0.3" ];
    platformVersions   = [ "29" "30" "31" "33" ];
  };
  android-pkgs     = if pkgs.stdenv.system == "aarch64-darwin" then pkgs.pkgsx86_64Darwin else pkgs;
  android-sdk      = android-comp.androidsdk;
  android-sdk-root = "${android-sdk}/libexec/android-sdk";
in {
  enterShell = ''
    ${pkgs.flutter}/bin/flutter config --android-sdk "${android-sdk-root}"
  '';

  env = {
    ANDROID_HOME     = "${android-sdk-root}";
    ANDROID_SDK_ROOT = "${android-sdk-root}";
  };

  languages = {
    java = {
      enable      = true;
      jdk.package = pkgs.jdk11;
    };

    javascript.enable = true;
  };

  name = "mm-flutter-app";

  packages = with pkgs;
    [ act android-sdk flutter nodePackages.firebase-tools pandoc ];

  processes.mock-server.exec = ''
    mv assets/.env assets/.env.bak 2>/dev/null || true
    touch assets/.env
    echo APP_GRAPHQL_URL="http://localhost:4000/mmdata/api/graphql" >> assets/.env
    echo APP_SUBSCRIPTION_URL="ws://localhost:4000/mmdata/api/graphql" >> assets/.env
    cd mm-mock-server && npm install && npm start
  '';
}
