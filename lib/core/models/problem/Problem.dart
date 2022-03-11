import 'package:burmethon_app/core/models/category/Category.dart';
import 'package:burmethon_app/core/models/scooter/Scooter.dart';
import 'package:burmethon_app/core/models/user/User.dart';
import 'package:burmethon_app/core/utils/Codable.dart';

class Problem implements Decodable<Problem, Map<String, dynamic>>{

  late int id;
  late String name;
  late String description;
  late Scooter scooter;
  late double latitude;
  late double longitude;
  late DateTime date;
  late User? referent;
  late User owner;
  late Category category;

  @override
  Problem decode(Map<String, dynamic> jsonObject) {
    Problem problem = Problem();
    problem.id = DecodableTools.decodeInt(jsonObject, "id");
    problem.name = DecodableTools.decodeString(jsonObject, "name");
    problem.description = DecodableTools.decodeString(jsonObject, "description");
    problem.scooter = DecodableTools.decodeNestedObject(jsonObject, "scooter", Scooter().decode);
    problem.latitude = DecodableTools.decodeDouble(jsonObject, "latitude");
    problem.longitude = DecodableTools.decodeDouble(jsonObject, "longitude");
    problem.date = DecodableTools.decodeDate(jsonObject, "date");
    problem.referent = DecodableTools.decodeNullableNestedObject(jsonObject, "referent", User().decode)!;
    problem.owner = DecodableTools.decodeNullableNestedObject(jsonObject, "owner", User().decode)!;
    problem.category = DecodableTools.decodeNestedObject(jsonObject, "category", Category().decode);
    return problem;
  }


}