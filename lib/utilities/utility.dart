import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/utilities/errors/error_widget.dart';
import 'package:uuid/uuid.dart';

import '../widgets/atoms/loading.dart';

class AppUtility {
  AppUtility._private();
  static String getUuid() {
    return const Uuid().v1();
  }

  static Widget widgetForAsyncState({
    required AsyncState state,
    required Widget Function() onReady,
  }) {
    switch (state) {
      case AsyncState.loading:
        return const Center(
          child: Loading(),
        );
      case AsyncState.error:
        return const Center(
          child: CustomErrorWidget(),
        );
      default:
        return onReady();
    }
  }

  static Widget widgetForAsyncSnapshot({
    required AsyncSnapshot snapshot,
    required Widget Function() onReady,
  }) {
    final AsyncState state;
    if (snapshot.hasError) {
      state = AsyncState.error;
    } else if (!snapshot.hasData) {
      state = AsyncState.loading;
    } else {
      state = AsyncState.ready;
    }
    return widgetForAsyncState(state: state, onReady: onReady);
  }

  static String getUserInitials(String fullName) {
    return fullName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }

  static String timestampDateFormat(
    BuildContext context,
    DateTime date, {
    bool capitalize = true,
  }) {
    DateTime now = DateTime.now();
    final AppLocalizations? l10n = AppLocalizations.of(context);
    if (l10n != null &&
        now.day == date.day &&
        now.month == date.month &&
        now.year == date.year) {
      final String todayText = capitalize
          ? l10n.dateSimpleToday[0].toUpperCase() +
              l10n.dateSimpleToday.substring(1)
          : l10n.dateSimpleToday;
      return '$todayText ${DateFormat().add_jm().format(date)}';
    } else {
      return DateFormat('MMMM d').add_jm().format(date);
    }
  }

  static String simplePastDateFormat(
    BuildContext context,
    DateTime date, {
    bool capitalize = true,
  }) {
    final AppLocalizations? l10n = AppLocalizations.of(context);
    if (l10n == null) {
      return DateFormat('MMMM d').add_jm().format(date);
    }
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final pastDate = DateTime(date.year, date.month, date.day);
    final String result;

    if (pastDate == today) {
      result = l10n.dateSimpleToday;
    } else if (pastDate == yesterday) {
      result = l10n.dateSimpleYesterday;
    } else if ((today.difference(pastDate).inDays / 7).floor() == 0) {
      // Within a week
      result = DateFormat('EEEE').format(date); // Day of week
    } else if ((today.difference(pastDate).inDays / 7).ceil() <= 5) {
      // Within 5 weeks
      final int weeksAgo = (today.difference(pastDate).inDays / 7).ceil();
      result = weeksAgo == 1 ? l10n.dateLastWeek : l10n.datePastWeeks(weeksAgo);
    } else if (today.difference(pastDate).inDays <= 365 &&
        today.month != pastDate.month) {
      // Within a year
      int monthsAgo = today.month - pastDate.month;
      if (monthsAgo.isNegative) {
        monthsAgo += 12;
      }
      result =
          monthsAgo == 1 ? l10n.dateLastMonth : l10n.datePastMonths(monthsAgo);
    } else {
      // More than a year
      final int yearsAgo = today.year - pastDate.year;
      result = yearsAgo == 1 ? l10n.dateLastYear : l10n.datePastYears(yearsAgo);
    }
    return capitalize ? result[0].toUpperCase() + result.substring(1) : result;
  }
}
