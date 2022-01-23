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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 74,
                        left: SizeConfig.safeBlockHorizontal * 166,
                        right: SizeConfig.safeBlockHorizontal * 150),
                    width: SizeConfig.safeBlockHorizontal * 97,
                    height: SizeConfig.safeBlockVertical * 65,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Logo',
                        style: GoogleFonts.workSans(
                            fontSize: SizeConfig.safeBlockHorizontal * 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          SizeConfig.safeBlockHorizontal * 10),
                    ),
                    margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 46,
                        left: SizeConfig.safeBlockHorizontal * 24,
                        right: SizeConfig.safeBlockHorizontal * 24),
                    width: SizeConfig.safeBlockHorizontal * 327,
                    height: SizeConfig.safeBlockVertical * 544,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical * 39),
                          child: Text(
                            'Welcome Back!',
                            style: GoogleFonts.workSans(
                                fontSize: SizeConfig.safeBlockVertical * 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical * 14,
                              left: SizeConfig.safeBlockHorizontal * 51,
                              right: SizeConfig.safeBlockHorizontal * 51),
                          child: Text(
                            'Sign in to your account to continue',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.workSans(
                                fontSize: SizeConfig.safeBlockVertical * 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                            height: SizeConfig.safeBlockVertical * 60,
                            decoration: BoxDecoration(),
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 26,
                                left: SizeConfig.safeBlockHorizontal * 16,
                                right: SizeConfig.safeBlockHorizontal * 16),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: GoogleFonts.workSans(
                                    fontSize: SizeConfig.safeBlockVertical * 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffabb3bb)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.safeBlockHorizontal * 10),
                                ),
                                prefixIcon: Icon(
                                  FontAwesomeIcons.envelope,
                                  color: Colors.black,
                                  size: SizeConfig.safeBlockVertical * 20,
                                ),
                              ),
                            )),
                        Container(
                            height: SizeConfig.safeBlockVertical * 60,
                            decoration: BoxDecoration(),
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 16,
                                left: SizeConfig.safeBlockHorizontal * 16,
                                right: SizeConfig.safeBlockHorizontal * 16),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: GoogleFonts.workSans(
                                    fontSize: SizeConfig.safeBlockVertical * 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffabb3bb)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.safeBlockHorizontal * 10),
                                ),
                                prefixIcon: Icon(
                                  FontAwesomeIcons.lock,
                                  color: Colors.black,
                                  size: SizeConfig.safeBlockVertical * 20,
                                ),
                              ),
                            )),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 22,
                                left: SizeConfig.safeBlockHorizontal * 203,
                                right: SizeConfig.safeBlockHorizontal * 16),
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.workSans(
                                fontSize: SizeConfig.safeBlockHorizontal * 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFC6D5B),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: SizeConfig.safeBlockVertical * 52,
                            width: SizeConfig.safeBlockHorizontal * 295,
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 26,
                                left: SizeConfig.safeBlockHorizontal * 16,
                                right: SizeConfig.safeBlockHorizontal * 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.safeBlockHorizontal * 8),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff7957F3),
                                    Color(0xff8F70FF),
                                  ],
                                )),
                            child: Center(
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.workSans(
                                  fontSize: SizeConfig.safeBlockHorizontal * 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 12,
                                left: SizeConfig.safeBlockHorizontal * 16,
                                right: SizeConfig.safeBlockHorizontal * 16),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Divider(color: Color(0xffabb3bb))),
                                Text(
                                  'OR',
                                  style: GoogleFonts.nunitoSans(
                                      fontSize:
                                          SizeConfig.safeBlockVertical * 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffabb3bb)),
                                ),
                                Expanded(
                                    child: Divider(color: Color(0xffabb3bb))),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical * 26,
                              left: SizeConfig.safeBlockHorizontal * 16,
                              right: SizeConfig.safeBlockHorizontal * 16,
                              bottom: SizeConfig.safeBlockVertical * 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SocialButton(
                                onTap: () {},
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFC6A57),
                                    Color(0xffFF7A69),
                                    Color(0xffFF5741),
                                  ],
                                ),
                                icon: FontAwesomeIcons.google,
                                text: 'Google',
                              ),
                              SocialButton(
                                onTap: () {},
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff298FFF),
                                    Color(0xff0778F5),
                                  
                                  ],
                                ),
                                icon: FontAwesomeIcons.facebookF,
                                text: 'Facebook',
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical * 33,
                              left: SizeConfig.safeBlockHorizontal * 16,
                              right: SizeConfig.safeBlockHorizontal * 16,
                              bottom: SizeConfig.safeBlockVertical * 55),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: GoogleFonts.workSans(
                                    fontSize:
                                        SizeConfig.safeBlockVertical * 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffabb3bb)),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => SignUp()));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.workSans(
                                      fontSize:
                                          SizeConfig.safeBlockVertical * 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff7957F3)),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
              Positioned(
                top: SizeConfig.safeBlockVertical * -90,
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
                top: SizeConfig.safeBlockVertical * 740,
                left: SizeConfig.safeBlockHorizontal * -60,
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

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
    this.icon,
    this.gradient,
    this.onTap,
    this.text,
  }) : super(key: key);
  final gradient;
  final onTap;
  final icon;
  final text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig.safeBlockVertical * 48,
        width: SizeConfig.safeBlockHorizontal * 139,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(SizeConfig.safeBlockHorizontal * 6),
            gradient: gradient),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                color: Colors.white,
                size: SizeConfig.safeBlockVertical * 14),
            SizedBox(width:10),
            FittedBox(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
                  fontSize: SizeConfig.safeBlockHorizontal * 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
