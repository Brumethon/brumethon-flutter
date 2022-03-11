import 'package:burmethon_app/core/models/common/ServiceResponse.dart';

abstract class IUserService {
  Future<ServiceResponse<bool>> addUser();
}