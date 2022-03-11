import 'package:burmethon_app/core/utils/Codable.dart';

class ScooterModel implements Decodable<ScooterModel, Map<String, dynamic>> {

  late int id;
  late String name;

  @override
  ScooterModel decode(Map<String, dynamic> jsonObject) {
    ScooterModel scooterModel = ScooterModel();
    scooterModel.id = DecodableTools.decodeInt(jsonObject, "id");
    scooterModel.name = DecodableTools.decodeString(jsonObject, "name");
    return scooterModel;
  }


}