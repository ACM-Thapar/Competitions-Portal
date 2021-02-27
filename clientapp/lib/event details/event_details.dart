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
<<<<<<< HEAD
                  child: Stack(
=======
          child: Stack(
>>>>>>> upstream/master
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 200,
                  image: AssetImage('images/code.png'),
                ),
              ),
              Container(
<<<<<<< HEAD
                margin: EdgeInsets.only(top:140),
=======
                margin: EdgeInsets.only(top: 140),
>>>>>>> upstream/master
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
                            image: AssetImage('images/skillenza.png'),
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
<<<<<<< HEAD
                    SizedBox(height:15),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(top:37.11),
=======
                    SizedBox(height: 15),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(top: 37.11),
>>>>>>> upstream/master
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
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(26.05, 34, 22, 0),
                                child: Container(
                                  width: 311.95,
                                  height: 21,
                                  child: Center(
                                    child: Text(
                                      'TIMELINE',
                                      style: GoogleFonts.raleway(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              TimelineTile(
                                lineXY: .5,
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                isFirst: true,
                                indicatorStyle: IndicatorStyle(
                                  width: 35.45,
                                  height: 35,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.edit,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  indicatorXY: 0,
                                  padding: const EdgeInsets.only(top: 21),
                                ),
                                endChild: Padding(
<<<<<<< HEAD
                                  padding: const EdgeInsets.only(top:25),
=======
                                  padding: const EdgeInsets.only(top: 25),
>>>>>>> upstream/master
                                  child: Column(
                                    children: [
                                      Text(
                                        'Registration'.toUpperCase(),
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                          fontSize:12,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top:8),
=======
                                          fontSize: 12,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 8),
>>>>>>> upstream/master
                                        child: Text(
                                          'December 29,2020'.toUpperCase(),
                                          style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                            fontSize:10,
=======
                                            fontSize: 10,
>>>>>>> upstream/master
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TimelineTile(
                                lineXY: 0,
                                beforeLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                indicatorStyle: IndicatorStyle(
                                  indicatorXY: 0,
                                  width: 35.45,
                                  height: 35,
                                  drawGap: true,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.cut,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                startChild: Column(
                                  children: [
                                    Text(
                                      'Inaugration'.toUpperCase(),
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                        fontSize:12,
=======
                                        fontSize: 12,
>>>>>>> upstream/master
                                      ),
                                    ),
                                    Container(
                                      width: 93,
<<<<<<< HEAD
                                      padding: EdgeInsets.only(top:8),
=======
                                      padding: EdgeInsets.only(top: 8),
>>>>>>> upstream/master
                                      child: Text(
                                        'December 29,2020 10 AM'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                          fontSize:10,
=======
                                          fontSize: 10,
>>>>>>> upstream/master
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TimelineTile(
                                beforeLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                indicatorStyle: IndicatorStyle(
                                  indicatorXY: 0,
                                  width: 35.45,
                                  height: 35,
                                  drawGap: true,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.lightbulb,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                endChild: Column(
                                  children: [
                                    Text(
                                      'IDEATION & CREATION'.toUpperCase(),
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                        fontSize:12,
                                      ),
                                      
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top:8),
                                      width: 124,
                                                                          child: Text(
                                        'DECEMBER 29 ,2020 - DECEMBER 30 ,2020'.toUpperCase(),
=======
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 8),
                                      width: 124,
                                      child: Text(
                                        'DECEMBER 29 ,2020 - DECEMBER 30 ,2020'
                                            .toUpperCase(),
>>>>>>> upstream/master
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                          fontSize:10,
=======
                                          fontSize: 10,
>>>>>>> upstream/master
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TimelineTile(
                                beforeLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                indicatorStyle: IndicatorStyle(
                                  indicatorXY: 0,
                                  width: 35.45,
                                  height: 35,
                                  drawGap: true,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.clock,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                startChild: Column(
                                  children: [
                                    Text(
                                      'SUBMISSION DEADLINE'.toUpperCase(),
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                        fontSize:12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top:8),
=======
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 8),
>>>>>>> upstream/master
                                      width: 80,
                                      child: Text(
                                        'JANUARY 1 ,2021 10 AM'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                          fontSize:10,
=======
                                          fontSize: 10,
>>>>>>> upstream/master
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TimelineTile(
                                beforeLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                indicatorStyle: IndicatorStyle(
                                  indicatorXY: 0,
                                  width: 35.45,
                                  height: 35,
                                  drawGap: true,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.starHalfAlt,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                endChild: Column(
                                  children: [
                                    Container(
                                      width: 126,
                                      child: Text(
                                        'JUDGING & PRESENTATION'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                          fontSize:12,
                                        ),
                                        
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top:8),
                                      width: 124,
                                                                          child: Text(
=======
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 8),
                                      width: 124,
                                      child: Text(
>>>>>>> upstream/master
                                        'JANUARY 4 ,2021'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                          fontSize:10,
=======
                                          fontSize: 10,
>>>>>>> upstream/master
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TimelineTile(
                                isLast: true,
                                beforeLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                afterLineStyle: LineStyle(
                                    color: Colors.white, thickness: 1),
                                alignment: TimelineAlign.center,
                                indicatorStyle: IndicatorStyle(
                                  indicatorXY: 0,
                                  width: 35.45,
                                  height: 35,
                                  drawGap: true,
                                  indicator: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.trophy,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                startChild: Column(
                                  children: [
                                    Text(
                                      'RESULTS'.toUpperCase(),
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
<<<<<<< HEAD
                                        fontSize:12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top:8),
=======
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 8),
>>>>>>> upstream/master
                                      width: 80,
                                      child: Text(
                                        'JANUARY 5 ,2021 5 PM'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
<<<<<<< HEAD
                                          fontSize:10,
=======
                                          fontSize: 10,
>>>>>>> upstream/master
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
