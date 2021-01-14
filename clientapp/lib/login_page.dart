import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              colors: [Color(0xff00032D), Color(0xff000000),Color(0xff05001D)]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                'PORTAL',
                style: GoogleFonts.raleway(

                  fontWeight: FontWeight.w500,
                  color: Color(0xffF2F2F2),
                  fontSize: 45.0,
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  Text(
                    'Welcome !',
                    style: GoogleFonts.raleway(
                      color: Color(0xffE4FCF9),
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Padding(padding: EdgeInsets.only(top:90.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xffD33535),
                        borderRadius:BorderRadius.all(Radius.circular(25.0)),

                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,right: 15.0),
                            child: Icon(FontAwesomeIcons.googlePlusG,
                                size: 30.0,
                                color: Colors.white,
                            ),
                          ),
                          Text(
                            'Sign in with Google',
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              color: Colors.white,
                            ),

                          ),

                        ],
                      ),
                    ),
                  ),


                  Padding(padding: EdgeInsets.only(top:70.0),
                    child: Container(
                      height: 50,
                      width: 300,

                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius:BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(
                        color: Colors.white,
                      )),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only( right: 15.0),
                            child: Icon(FontAwesomeIcons.github,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Sign in with Github',
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top:70.0),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xff4C4B99),
                      borderRadius:BorderRadius.all(Radius.circular(25.0)
                    ),),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:10.0,right: 15.0),
                          child: Icon(FontAwesomeIcons.facebookSquare,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Sign in with Facebook',
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                        ),

                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
