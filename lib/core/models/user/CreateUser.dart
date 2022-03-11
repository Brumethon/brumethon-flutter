import 'package:burmethon_app/core/models/address/CreateAddress.dart';

class CreateUser {

  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String serialNumber;
  late String email;
  late String password;

  late CreateAddress address;

  @override
  String toString() {
    return 'CreateUser{firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, serialNumber: $serialNumber, email: $email, password: $password, address: $address}';
  }
}