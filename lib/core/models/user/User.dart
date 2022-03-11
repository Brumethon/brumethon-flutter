import 'package:burmethon_app/core/utils/Codable.dart';

class User implements Decodable<User, Map<String, dynamic>> {

  late int? id;
  late String? firstName;
  late String? lastName;
  late String? phoneNumber;
  late String? email;
  late String? address;

  @override
  User decode(Map<String, dynamic> jsonObject) {
    User user = User();
    user.id = DecodableTools.decodeNullableInt(jsonObject, "id");
    user.firstName = DecodableTools.decodeNullableString(jsonObject, "firstName");
    user.lastName = DecodableTools.decodeNullableString(jsonObject, "lastName");
    user.phoneNumber = DecodableTools.decodeNullableString(jsonObject, "phoneNumber");
    user.email = DecodableTools.decodeNullableString(jsonObject, "email");
    user.address = DecodableTools.decodeNullableString(jsonObject, "address");
    return user;
  }

}