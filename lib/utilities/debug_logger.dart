import 'package:logger/logger.dart';

class DebugLogger {
  static final Logger _logger = Logger();

  DebugLogger._private();

  static void trace(String message) => _logger.t(message);
  static void debug(String message) => _logger.d(message);
  static void info(String message) => _logger.i(message);
  static void warning(String message) => _logger.w(message);
  static void error(String message) => _logger.e(message);
}
