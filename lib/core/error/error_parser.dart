String? errorParser(dynamic data) {
  if (data is Map<String, dynamic> &&
      data['error'] == true &&
      data['message'] != null) {
    final messages = data['message'] as Map<String, dynamic>;
    final errorMessages = messages.entries
        .map((e) => (e.value as List).join(', '))
        .join('\n');
    return errorMessages;
  }

  return null;
}
