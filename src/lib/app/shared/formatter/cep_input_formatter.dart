import 'package:flutter/services.dart';

class CepTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (text.length > 8) {
      return oldValue;
    }

    String formattedText;
    if (text.length > 5) {
      formattedText = '${text.substring(0, 5)}-${text.substring(5)}';
    } else {
      formattedText = text;
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
