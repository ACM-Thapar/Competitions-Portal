import 'package:clientapp/Model/event.dart';
import 'package:clientapp/Provider/events_provider.dart';
import 'package:clientapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'RoundedButton.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EventDetails extends StatelessWidget {
  // final Event event;
  // EventDetails({this.event});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final event = Provider.of<EventsProvider>(context).getEvents('CP')[0];
    return Scaffold(
      backgroundColor: Color(0xff5372E7),
      appBar: AppBar(
        backgroundColor: Color(0xff5372E7),
        centerTitle: true,
        title: Text(
          'PORTAL',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: SizeConfig.safeBlockVertical * 200,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.fill,
                    placeholder: 'assets/acm_logo.png',
                    image: event.imageURL,
                  )),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20.0,
                          left: SizeConfig.safeBlockHorizontal * 30,
                          right: SizeConfig.safeBlockHorizontal * 25,
                          bottom: SizeConfig.safeBlockVertical * 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Organizer: ',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize:SizeConfig.safeBlockVertical* 22.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                event.organiser,
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: SizeConfig.safeBlockVertical * 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Registration Fees',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize: SizeConfig.safeBlockVertical*15.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Rs. ${event.registration_fee}',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize:SizeConfig.safeBlockVertical* 14.0,
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
                                fontSize:SizeConfig.safeBlockVertical* 15.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${event.team_size} Members',
                              style: GoogleFonts.raleway(
                                color: Colors.white,
                                fontSize:SizeConfig.safeBlockVertical* 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.safeBlockVertical * 25),
                      width: SizeConfig.safeBlockHorizontal * 308,
                      height: SizeConfig.safeBlockVertical * 25,
                      child: Center(
                        child: Text(
                          'EVENT DESCRIPTION',
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: SizeConfig.safeBlockVertical * 24.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.safeBlockHorizontal * 308,
                      height: SizeConfig.safeBlockVertical * 148,
                      child: Center(
                        child: Text(
                          event.description,
                          maxLines: 7,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.safeBlockVertical * 18),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.safeBlockHorizontal*308,
                      height: SizeConfig.safeBlockVertical * 50,
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            'LAST DATE TO REGISTER \n ${event.date}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: SizeConfig.safeBlockVertical*18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: SizeConfig.safeBlockVertical * 10,
                          bottom: SizeConfig.safeBlockVertical * 10),
                      child: RoundedButton(
                                  onPressed: () {},
                                  colour: Color(0xffFD367E),
                                  title: 'Register Now',
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
