

import 'package:burmethon_app/core/models/user/CreateUser.dart';
import 'package:burmethon_app/screens/SignUpStep/SignUpStep1.dart';
import 'package:burmethon_app/screens/SignUpStep/SignUpStep2.dart';
import 'package:burmethon_app/screens/SignUpStep/SignUpStep3.dart';
import 'package:burmethon_app/shared/widget/InputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}): super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _step = 1;

  CreateUser createUser = CreateUser();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Theme.of(context).backgroundColor,
        leading:
        IconButton( onPressed: (){
          if (_step > 1) {
            setState(() {
              _step -= 1;
            });
          } else {
            Navigator.pop(context);
          }
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text ("S'inscrire : étape $_step sur 3",
                          style: TextStyle( fontSize: 26, fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),

                    _step == 1 ?
                    Container(
                      child: SignUpStep1(
                        didNext: (onTap) {
                          if(onTap) {
                            setState(() {
                              _step += 1;
                            });
                          }
                        },
                        createUser: createUser,
                      )
                    ) :
                    _step == 2 ?
                    Container(
                      child: SignUpStep2(
                        didNext: (onTap) {
                          if(onTap) {
                            setState(() {
                              _step += 1;
                            });
                          }
                        },
                        createUser: createUser,
                      )
                    ) :
                    Container(
                      child: SignUpStep3(
                        didNext: (onTap) {
                          if(onTap) {
                            setState(() {
                              _step += 1;
                            });
                          }
                        },
                        createUser: createUser,
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}