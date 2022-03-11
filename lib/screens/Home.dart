import 'package:burmethon_app/screens/Login.dart';
import 'package:burmethon_app/screens/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Image.asset("lib/assets/images/brumaire-banner.png"),
                  ),
                  SizedBox(height: 50,),

                  Container(
                    height: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                        image:DecorationImage(image: AssetImage('lib/assets/images/brumaire-scooter-3.png'))
                    ),
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Login())
                      );
                    },
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Se connecter",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => SignUp())
                      );
                    },
                    color: Theme.of(context).highlightColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("S'inscrire",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Theme.of(context).backgroundColor,
  //     body: Align(
  //       alignment: Alignment.center,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.max,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Flexible(
  //             child: Column(
  //               children: [
  //
  //                 // Logo banner
  //                 Flexible(
  //                   fit: FlexFit.tight,
  //                   child: Padding(
  //                     padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
  //                     child: Container(
  //                       padding: EdgeInsets.symmetric(horizontal: 60),
  //                       child: Image.asset("lib/assets/images/brumaire-banner.png",),
  //                     ),
  //                   )
  //                 ),
  //
  //                 //Image
  //                 // Expanded(
  //                 //   child: Padding(
  //                 //     padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
  //                 //     child: Container(
  //                 //       padding: EdgeInsets.symmetric(horizontal: 60),
  //                 //       child: Image.asset("lib/assets/images/brumaire-scooter-2.png",),
  //                 //     ),
  //                 //   )
  //                 // ),
  //
  //                 // Bottom
  //                 Expanded(
  //                   child: Container(
  //                     alignment: Alignment.bottomRight,
  //                     width: MediaQuery.of(context).size.width,
  //                     decoration: BoxDecoration(
  //                       color: Theme.of(context).cardColor,
  //                       borderRadius: BorderRadius.only(
  //                           topLeft: Radius.circular(Utils.radiusCard),
  //                           topRight: Radius.circular(Utils.radiusCard)
  //                       ),
  //                     ),
  //                     child: Column(
  //                       children: [
  //                         // Btn Signup
  //                         Padding(
  //                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
  //                           child: MaterialLoaderButton(
  //                             onTap: () {
  //                               Navigator.of(context).pushNamed("/signup");
  //                             },
  //                             title: "S'inscrire",
  //                           ),
  //                         ),
  //                         // Btn signin
  //                         Padding(
  //                           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
  //                           child: MaterialLoaderButton(
  //                             onTap: () {
  //                               Navigator.of(context).pushNamed("/signin");
  //                             },
  //                             title: "Se connecter",
  //                             colorBtn: Theme.of(context).highlightColor,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}