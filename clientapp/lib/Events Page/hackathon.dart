import 'package:clientapp/Provider/events_provider.dart';
import 'package:clientapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Hackathon extends StatelessWidget {
  String tag;
  Hackathon(this.tag);
  @override
  Widget build(BuildContext context) {
    final events_list = Provider.of<EventsProvider>(context).getEvents(tag);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff5372E7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.safeBlockVertical * 60),
          topRight: Radius.circular(SizeConfig.safeBlockVertical * 60),
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 25),
        child: ListView.builder(
            itemCount: events_list.length,
            itemBuilder: (ctx, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 40,
                  right: SizeConfig.safeBlockHorizontal * 40,
                  bottom: SizeConfig.safeBlockVertical * 33,
                ),
                width: SizeConfig.safeBlockHorizontal * 300,
                height: SizeConfig.safeBlockVertical * 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(SizeConfig.safeBlockVertical * 30),
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
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/acm_logo.png',
                        image: events_list[index].imageURL,
                        imageScale: 0.5,
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
                                FittedBox(
                                  child: Text(events_list[index].organiser,
                                      style: GoogleFonts.nunito(
                                        fontSize:
                                            SizeConfig.safeBlockVertical * 14,
                                        color:
                                            Color(0xff848484).withOpacity(.6),
                                        fontWeight: FontWeight.w800,
                                      ),
                                      overflow: TextOverflow.ellipsis
                                      ),
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
                                  child: Text('Fees - Rs. ${events_list[index].registration_fee}',
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
                                  onTap: () {},
                                  child: Container(
                                    width: SizeConfig.safeBlockHorizontal * 50,
                                    height: SizeConfig.safeBlockVertical * 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xff5372E7),
                                      borderRadius: BorderRadius.circular(
                                          SizeConfig.safeBlockVertical * 60),
                                    ),
                                    child: Center(
                                      child: FittedBox(
                                        child: Text('Apply Now',
                                            style: GoogleFonts.raleway(
                                              fontSize:
                                                  SizeConfig.safeBlockVertical *
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
              );
            }),
      ),
    );
  }
}
