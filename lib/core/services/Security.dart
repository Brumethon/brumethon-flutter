import 'package:crypt/crypt.dart';

class Security {

  static hashPassword(String password) {
    return Crypt.sha256(password, salt: 'MrSananes');
  }

}