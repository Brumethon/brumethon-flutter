import 'package:burmethon_app/core/utils/Codable.dart';

class Category implements Decodable<Category, Map<String, dynamic>> {

  late int id;
  late String name;

  @override
  Category decode(Map<String, dynamic> jsonObject) {
    Category category = Category();
    category.id = DecodableTools.decodeInt(jsonObject, "id");
    category.name = DecodableTools.decodeString(jsonObject, "name");
    return category;
  }
}


