import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3,1],
            colors: [Color(0xff564E6D),Colors.black]
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'PORTAL',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF2F2F2),
                  fontSize: 41.0,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.0),
              child: ClipOval(
                child: Container(
                 decoration: BoxDecoration(
                   gradient: RadialGradient(
                       colors: [Color(0xff564E6D),Color(0x40564E6D)]
                   ),

                     boxShadow: [
                 BoxShadow(
                 color: Color(0XFF272531),
                  spreadRadius: 10,
                  blurRadius: 5,
                   offset: Offset(0, 7),
                 ),
                ],
                 ),
                  height: 400.0,
                  width: 350.0,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 20.0),
                        child: Text('Welcome !',
                          style: TextStyle(color: Color(0xffE4FCF9), fontSize: 30,
                          fontFamily: 'Raleway',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                       SizedBox(
                         height: 60.0,
                       ),
                      Container(
                        height: 50.0,
                          width: 300,

                        child: ListTile(
                          onTap: (){},
                          leading: Icon(FontAwesomeIcons.googlePlusG,
                            size: 30.0,
                          color: Colors.white,),
                          tileColor:Color(0xffD33535) ,
                          title: Text(
                            'Sign in with Google',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontFamily: 'Raleway',
                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: ListTile(

                            onTap: (){},
                            leading: Icon(FontAwesomeIcons.facebookSquare,
                              color: Colors.white,
                            size: 30.0,),
                            tileColor:Color(0xff4C4B99) ,
                            title: Text(
                              'Sign in with Facebook',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                                fontFamily: 'Raleway',
                              ),

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: 50,
                          width: 300,
                          child: ListTile(
                            onTap: (){},
                            leading: Icon(FontAwesomeIcons.github,
                              color: Colors.white,
                              size: 30.0,),
                            tileColor:Colors.black54 ,
                            title: Text(
                              'Sign in with Github',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                       ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
