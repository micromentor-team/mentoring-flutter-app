abstract class AppError extends Error {
  final String message;
  final int errorId;
  final dynamic originalError;

  AppError({
    required this.message,
    required this.errorId,
    this.originalError,
  });
}

class UnexpectedStateError extends AppError {
  static const int id = 1;
  UnexpectedStateError({required String message, dynamic originalError})
      : super(message: message, errorId: id, originalError: originalError);
}
