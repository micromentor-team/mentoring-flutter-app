import '../dart_extensions/date_time_extensions.dart';

class TimeUtils {
  static DateTime nearestTimeIteration(DateTime time, int iterationInMinutes) {
    int hour = time.hour;
    int minutes = time.minute;
    int count = (minutes / iterationInMinutes).floor();
    int remainder = minutes % iterationInMinutes;

    if (remainder >= iterationInMinutes / 2) {
      count++;
    }

    minutes = count * iterationInMinutes;

    if (minutes > 59) {
      hour++;
      minutes = 0;
    }

    return time.clone(
      hour: hour,
      minute: minutes,
      second: 0,
      millisecond: 0,
    );
  }

  static int dayCount(DateTime startDate, DateTime? endDate) {
    if (endDate == null) {
      return 1;
    }
    return endDate.difference(startDate).inDays;
  }

  static List<DateTime> getStartAndEndOfWeek() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    DateTime startTime = now.subtract(Duration(days: date.weekday - 1));
    DateTime startDate = DateTime(startTime.year, startTime.month, startTime.day);
    DateTime endTime = now.add(const Duration(days: 5));
    DateTime endDate = DateTime(endTime.year, endTime.month, endTime.day);
    return [startDate, endDate];
  }
}