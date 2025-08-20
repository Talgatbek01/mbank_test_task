class ApiError {
  final bool error;
  final Map<String, List<String>> messages;

  ApiError({required this.error, required this.messages});

  factory ApiError.fromJson(Map<String, dynamic> json) {
    final messageMap = <String, List<String>>{};
    if (json['message'] != null) {
      (json['message'] as Map<String, dynamic>).forEach((key, value) {
        messageMap[key] = List<String>.from(value);
      });
    }
    return ApiError(error: json['error'], messages: messageMap);
  }

  String get allMessages => messages.values.expand((e) => e).join('\n');
}
