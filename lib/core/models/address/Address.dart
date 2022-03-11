import 'package:burmethon_app/core/utils/Codable.dart';

class Address implements Decodable<Address, Map<String, dynamic>>{

  late int id;
  late String numberInStreet;
  late String street;
  late String city;
  late String postalCode;

  @override
  Address decode(Map<String, dynamic> jsonObject) {
    Address address = Address();
    address.id = DecodableTools.decodeInt(jsonObject, "id");
    address.numberInStreet = DecodableTools.decodeString(jsonObject, "numberInStreet");
    address.street = DecodableTools.decodeString(jsonObject, "street");
    address.city = DecodableTools.decodeString(jsonObject, "city");
    address.postalCode = DecodableTools.decodeString(jsonObject, "postalCode");
    return address;
  }


}