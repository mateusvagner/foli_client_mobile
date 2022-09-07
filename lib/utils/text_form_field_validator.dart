class TextFormFieldValidator {

  static bool _isNullOrEmpty(String? value) {
    return value == null || value.isEmpty;
  }

  static bool _isValidEmail(String value) {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
  }

  static String? requiredField(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Esse campo é obrigatório';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Você deve preencher seu e-mail';
    }

    if (!_isValidEmail(value!)) {
      return 'Você deve inserir um e-mail válido';
    }

    return null;
  }

  static String? passwordValidator(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Você deve fornecer uma senha';
    }

    return null;
  }
}
