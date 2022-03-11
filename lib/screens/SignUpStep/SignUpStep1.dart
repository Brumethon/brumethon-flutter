import 'package:burmethon_app/core/models/user/CreateUser.dart';
import 'package:burmethon_app/shared/widget/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpStep1 extends StatefulWidget {
  final void Function(bool)? didNext;
  CreateUser createUser;

  SignUpStep1({Key? key, required this.didNext, required this.createUser});

  @override
  State<StatefulWidget> createState() => _SignUpStep1State();

}

class _SignUpStep1State extends State<SignUpStep1> {

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _serialNumberScooterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 40
              ),
              child: Column(
                children: [
                  InputText(label: "Prémon", controller: _firstNameController,),
                  InputText(label: "Nom", controller: _lastNameController,),
                  InputText(label: "Numéro de téléphone", controller: _phoneNumberController,),
                  InputText(label: "ID de votre scooter", controller: _serialNumberScooterController,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.only(top: 3,left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black)
                    )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height:60,
                  onPressed: (){
                    widget.createUser.firstName = _firstNameController.text;
                    widget.createUser.lastName = _lastNameController.text;
                    widget.createUser.phoneNumber = _phoneNumberController.text;
                    widget.createUser.serialNumber = _serialNumberScooterController.text;

                    widget.didNext!(true);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text("Suivant",style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 16,

                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}