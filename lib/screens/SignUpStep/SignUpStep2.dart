import 'package:burmethon_app/core/models/user/CreateUser.dart';
import 'package:burmethon_app/shared/widget/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpStep2 extends StatefulWidget {
  final void Function(bool)? didNext;
  CreateUser createUser;

  SignUpStep2({Key? key, required this.didNext, required this.createUser})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpStep2State();
}

class _SignUpStep2State extends State<SignUpStep2> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();

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
                  InputText(label: "Email", controller: _emailController,),
                  InputText(label: "Password", obscureText: true, controller: _passwordController,),
                  InputText(label: "Confirm Pasword", obscureText: true, controller: _passwordConfirmationController,)
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
                    widget.createUser.email = _emailController.text;
                    widget.createUser.password = _passwordController.text;

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