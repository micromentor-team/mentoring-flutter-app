abstract class AppException implements Exception {
  final String message;
  final int? exceptionId;
  final dynamic originalException;

  AppException(
      {required this.message,
      required this.exceptionId,
      this.originalException});
}

class RetryException extends AppException {
  static const int id = 1;
  RetryException({required String message, dynamic originalException})
      : super(
          message: message,
          exceptionId: id,
          originalException: originalException,
        );
}
