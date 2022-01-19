import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'RoundedButton.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 200,
                  image: AssetImage('assets/code.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 140),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff000000),
                      Color(0xff0B003E),
                      Color(0xff000000)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(26.0, 25.0, 18.0, 0),
                          child: Image(
                            image: AssetImage('assets/skillenza.png'),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 15.0, 26.0, 0),
                            child: Column(
                              children: [
                                Text(
                                  'PES Innovation Lab',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 18.0)),
                                ),
                                Text(
                                  'Hash Code 2020',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 18.0)),
                                ),
                                SizedBox(height: 7.0),
                                Text(
                                  'PES University (PESU), Bengaluru',
                                  style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                        color: Color(0xff678ef3),
                                      ),
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(top: 37.11),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Registration Fees',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '1000',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Team Size',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '3-5 Members',
                                        style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(26, 34, 26, 0),
                                child: Container(
                                  width: 308,
                                  height: 21,
                                  child: Center(
                                    child: Text(
                                      'EVENT DESCRIPTION',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(26, 15, 26, 0),
                                child: Container(
                                  width: 308,
                                  height: 90,
                                  child: Center(
                                    child: Text(
                                      'Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET. Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET. Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET. ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(26, 34, 26, 0),
                                child: Container(
                                  width: 308,
                                  height: 42,
                                  child: Center(
                                    child: Text(
                                      'LAST DATE TO REGISTER \n January 20 ,2021',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25.0),
                              RoundedButton(
                                onPressed: () {},
                                colour: Color(0xffFD367E),
                                title: 'Register Now',
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
