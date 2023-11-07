class Validator {
  static bool isValidEmail(String? text) {
    if (text == null) return false;
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(text);
  }

  static bool isValidPhone(String? text) {
    if (text == null) return false;
    return text.length >= 8 && text.length <= 14;
  }

  static String? isRequired(String? text) {
    if (text == null || text.isEmpty) return 'wajib';
    return null;
  }
}
