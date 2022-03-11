import 'package:burmethon_app/core/utils/Codable.dart';

class User implements Decodable<User, Map<String, dynamic>> {

  late int id;
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String serialNumber;
  late String email;

  @override
  User decode(Map<String, dynamic> jsonObject) {
    User user = User();
    user.id = DecodableTools.decodeInt(jsonObject, "id");
    user.firstName = DecodableTools.decodeString(jsonObject, "firstName");
    user.lastName = DecodableTools.decodeString(jsonObject, "lastName");
    user.phoneNumber = DecodableTools.decodeString(jsonObject, "phoneNumber");
    user.serialNumber = DecodableTools.decodeString(jsonObject, "serialNumber");
    user.email = DecodableTools.decodeString(jsonObject, "email");
    return user;
  }

}