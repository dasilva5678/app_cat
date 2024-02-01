import 'package:app_cat/core/interfaces/value_object.dart';

class Password implements ValueObject {
  final String _value;

  Password(this._value);

  @override
  String? validator([Object? object]) {
    if (_value.trim().isEmpty) {
      return 'Favor preencher o campo de senha!';
    }

    if (_value.length < 8) {
      return 'A senha deve conter pelo menos 8 caracteres!';
    }

    bool containsLetter = false;
    bool containsNumber = false;

    for (int i = 0; i < _value.length; i++) {
      if (_value[i].toLowerCase() != _value[i].toUpperCase()) {
        containsLetter = true;
      } else if (int.tryParse(_value[i]) != null) {
        containsNumber = true;
      }

      if (containsLetter && containsNumber) {
        break;
      }
    }

    if (!containsLetter || !containsNumber) {
      return 'A senha deve conter pelo menos uma letra e um número!';
    }

    return null;
  }
}
