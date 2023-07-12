{ pkgs, ... }:

let
  android-comp     = android-pkgs.androidenv.composeAndroidPackages {
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

  languages.java = {
    enable      = true;
    jdk.package = pkgs.jdk11;
  };

  name = "mm-flutter-app";

  packages = with pkgs;
    [ act android-sdk flutter nodePackages.firebase-tools pandoc ];
}
