import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentVariables {
  API_URL,
}

extension Value on EnvironmentVariables {
  String get value {
    return this.toString().replaceFirst("EnvironmentVariables.", "");
  }
}

class EnvironmentVariableService {

  static String get(EnvironmentVariables environmentVariable) {
    return dotenv.env[environmentVariable.value]!;
  }

  static Future<void> load() async {
    /// [TODO] check all env variable
    await dotenv.load(fileName: ".env");
    var isEveryDefined = dotenv.isEveryDefined(
        EnvironmentVariables.values.map((envVar) => envVar.value));

    if (!isEveryDefined) {
      throw Exception("Missing env variable :< .");
    }
  }

}
