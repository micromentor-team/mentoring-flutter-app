{ pkgs, ... }:

let
  android-comp     = pkgs.androidenv.composeAndroidPackages {
    buildToolsVersions = [ "30.0.3" ];
    platformVersions   = [ "29" "30" "31" "33" ];
  };
  android-sdk      = android-comp.androidsdk;
  android-sdk-root = "${android-sdk}/libexec/android-sdk";
in {
  enterShell = ''
    flutter config --android-sdk "${android-sdk-root}"
  '';

  env = {
    ANDROID_HOME     = "${android-sdk-root}";
    ANDROID_SDK_ROOT = "${android-sdk-root}";
  };

  languages.java = {
    enable      = true;
    jdk.package = pkgs.jdk11;
  };

  name = "mm-flutter-app";

  packages = [ android-sdk ];
}
