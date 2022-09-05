class HtpCustomError extends Error {
  final int? code;
  final String? message;
  final String? result;
  final String? kyctoken;

  HtpCustomError({
    this.code,
    this.message,
    this.result,
    this.kyctoken
  });

  @override
  String toString() => 'HtpCustomError(message: $message)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is HtpCustomError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
