import 'package:burmethon_app/core/models/scooterModel/ScooterModel.dart';
import 'package:burmethon_app/core/models/user/User.dart';
import 'package:burmethon_app/core/utils/Codable.dart';

class Scooter implements Decodable<Scooter, Map<String, dynamic>> {

  late int id;
  late String serialNumber;
  late ScooterModel model;
  late User owner;
  late DateTime purchaseDate;

  @override
  Scooter decode(Map<String, dynamic> jsonObject  ) {
    Scooter scooter = Scooter();
    scooter.id = DecodableTools.decodeInt(jsonObject, "id");
    scooter.serialNumber = DecodableTools.decodeString(jsonObject, "serialNumber");
    scooter.model = DecodableTools.decodeNestedObject(jsonObject, "model", ScooterModel().decode);
    scooter.owner = DecodableTools.decodeNestedObject(jsonObject, "owner", User().decode);
    scooter.purchaseDate = DecodableTools.decodeDate(jsonObject, "purchaseDate");
    return scooter;
  }

}