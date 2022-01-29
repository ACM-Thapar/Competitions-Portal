import 'package:clientapp/Provider/events_provider.dart';
import 'package:clientapp/event%20details/event_details.dart';
import 'package:clientapp/routers/routenames.dart';
import 'package:clientapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;

    var path = Path();

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, 0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    path.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    path.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


class Hackathon extends StatelessWidget {
  final String tag;
  Hackathon(this.tag);
  @override
  Widget build(BuildContext context) {
    final events_list = Provider.of<EventsProvider>(context).getEvents(tag);
    return Container(

      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal * 4, SizeConfig.safeBlockVertical * 20, SizeConfig.safeBlockHorizontal * 4, 0),
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'background',
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.8 * 3.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff045de9), Color(0xff09c6f9)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 50),
            child: ListView.builder(
                itemCount: events_list.length,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(ctx,
                      MaterialPageRoute(builder: (_) => EventDetails(event: events_list[index],)));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 40,
                        right: SizeConfig.safeBlockHorizontal * 40,
                        bottom: SizeConfig.safeBlockVertical * 33,
                      ),
                      width: SizeConfig.safeBlockHorizontal * 300,
                      height: SizeConfig.safeBlockVertical * 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            SizeConfig.safeBlockVertical * 30),
                            // border: Border.all(
                            //   color: Colors.black,
                            //   width: 0,
                            // ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 7,
                            offset: Offset(7,8)
                          )]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical * 15,
                            ),
                            width: SizeConfig.safeBlockHorizontal * 262,
                            height: SizeConfig.safeBlockVertical * 160,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.safeBlockVertical * 20),
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/acm_logo.png',
                                  image: events_list[index].imageURL,
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.safeBlockHorizontal * 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: Text(events_list[index].title,
                                            style: GoogleFonts.nunito(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical * 24,
                                              color: Color(0xff848484),
                                              fontWeight: FontWeight.w800,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: SizeConfig.safeBlockHorizontal * 120,
                                        child: Text(events_list[index].organiser,
                                            style: GoogleFonts.nunito(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical * 14,
                                              color:
                                                  Color(0xff848484).withOpacity(.6),
                                              fontWeight: FontWeight.w800,
                                            ),
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      FittedBox(
                                        child: Text(events_list[index].time_left,
                                            style: GoogleFonts.nunito(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical * 12,
                                              color:
                                                  Color(0xff848484).withOpacity(.6),
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: SizeConfig.safeBlockHorizontal * 7),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                            'Prize - Rs. ${events_list[index].prize}/-',
                                            style: GoogleFonts.nunito(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical * 18,
                                              color: Color(0xff848484),
                                              fontWeight: FontWeight.w800,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      FittedBox(
                                        child: Text(
                                            'Fees - Rs. ${events_list[index].registration_fee}',
                                            style: GoogleFonts.nunito(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical * 12,
                                              color: Color(0xff848484),
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(ctx, MaterialPageRoute(builder: (_) => EventDetails(event: events_list[index],)));
                                        },
                                        child: Container(
                                          width:
                                              SizeConfig.safeBlockHorizontal * 50,
                                          height: SizeConfig.safeBlockVertical * 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xff0075FF),
                                            borderRadius: BorderRadius.circular(
                                                SizeConfig.safeBlockVertical *12),
                                          ),
                                          child: Center(
                                            child: FittedBox(
                                              child: Text('Apply Now',
                                                  style: GoogleFonts.raleway(
                                                    fontSize: SizeConfig
                                                            .safeBlockVertical *
                                                        10,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}
