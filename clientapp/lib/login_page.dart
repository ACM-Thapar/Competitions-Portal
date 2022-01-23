import 'package:clientapp/size_config.dart';
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
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Color(0xffF2F2F2)),
          child: Stack(
            children: [
              Positioned(
                top: SizeConfig.safeBlockVertical*-64,
                left: SizeConfig.safeBlockHorizontal * 271,
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xff5372E7).withOpacity(0.6),
                            Color(0xff5372E7).withOpacity(0.1)
                          ])),
                ),
              ),
              Positioned(
                top: SizeConfig.safeBlockVertical* 710,
                left: SizeConfig.safeBlockHorizontal * -35.92,
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xff5372E7).withOpacity(0.6),
                            Color(0xff5372E7).withOpacity(0.1)
                          ])),
                ),
              ),
            ],
          )),
    );
  }
}
