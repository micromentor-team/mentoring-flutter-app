import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class AppUtility {
  AppUtility._private();
  static String getUuid() {
    return const Uuid().v1();
  }

  static String getUserInitials(String fullName) {
    return fullName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }

  static String timestampDateFormat(BuildContext context, DateTime date) {
    DateTime now = DateTime.now();
    final AppLocalizations? l10n = AppLocalizations.of(context);
    if (l10n != null &&
        now.day == date.day &&
        now.month == date.month &&
        now.year == date.year) {
      return '${l10n.dateToday} ${DateFormat().add_jm().format(date)}';
    } else {
      return DateFormat('MMMM d').add_jm().format(date);
    }
  }
}
