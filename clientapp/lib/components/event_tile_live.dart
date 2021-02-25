import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Eventtilelive extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> images = [
    'acm_logo',
    'mlh',
    'SKILLENZA LOGO 1',
    'VANFLY',
    'WIRED CLAN LOGO 2'
  ];
  final String date;
  final int i;
  final String time;
  Eventtilelive({this.i, this.title, this.subtitle, this.date, this.time});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, top: 8.0),
      child: Container(
        color:
            (i % 2 == 0) ? Colors.black.withOpacity(0.53) : Color(0x870B003E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 31, bottom: 31, left: 15, right: 20),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        height: 90,
                        image: AssetImage("assets/${images[i]}.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      width: 71,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 12.0, right: 20, left: 20),
                      alignment: Alignment.center,
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 92,
                padding: EdgeInsets.only(bottom: 29),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Text(
                      date,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
