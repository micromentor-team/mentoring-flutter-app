part of '../constants.dart';

enum AsyncState {
  loading,
  error,
  ready,
}

enum UserType {
  mentor,
  entrepreneur,
}

enum MessageDirection {
  sent,
  received,
  unset,
  self,
}

enum GroupIdent {
  mentors,
  mentees,
}

enum WebsiteLabels {
  facebook,
  twitter,
  venture,
  linkedin,
  other,
}

enum CompanyStageTextId {
  idea,
  operational,
  earning,
  profitable,
}
