import 'package:burmethon_app/core/models/address/CreateAddress.dart';
import 'package:burmethon_app/core/models/user/CreateUser.dart';
import 'package:burmethon_app/shared/widget/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import '../SliderBrum.dart';

class SignUpStep3 extends StatefulWidget {
  final void Function(bool)? didNext;
  CreateUser createUser;

  SignUpStep3({Key? key, required this.didNext, required this.createUser}):
        super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpStep3State();
}

class _SignUpStep3State extends State<SignUpStep3> {

  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();

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
                  InputText(label: "Numéro", controller: _numberController,),
                  InputText(label: "Rue", controller: _streetController,),
                  InputText(label: "Ville", controller: _cityController,),
                  InputText(label: "Code postale", controller: _postalCodeController,),
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
                    CreateAddress address = CreateAddress();
                    address.numberInStreet = _numberController.text;
                    address.street = _streetController.text;
                    address.city = _cityController.text;
                    address.postalCode = _postalCodeController.text;

                    widget.createUser.address = address;
                    developer.log('log', name: widget.createUser.toString());

                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SliderBrum())
                    );
                    /// TODO : faire envoie à l'API
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text("Valider",style: TextStyle(
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