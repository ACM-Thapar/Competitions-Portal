import 'dart:ui';
import 'package:clientapp/Events%20Page/hackathon.dart';
import 'package:clientapp/components/event_tile_live.dart';
import 'package:clientapp/components/event_tile_upcoming.dart';
import 'package:clientapp/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/event_tile_past.dart';
import 'package:clientapp/components/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Eventspage extends StatefulWidget {
  @override
  _EventspageState createState() => _EventspageState();
}

class _EventspageState extends State<Eventspage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff5372E7),
              title: Center(
                child: Text(
                  'PORTAL',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              leading: IconButton(
                icon: Icon(FontAwesomeIcons.bars),
                iconSize: 20.0,
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.filter),
                  iconSize: 20.0,
                  onPressed: () {},
                ),
              ],
            ),
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 38,
                        left: SizeConfig.safeBlockHorizontal * 14,
                        right: SizeConfig.safeBlockHorizontal * 14,
                      ),
                      child: TabBar(
                        indicatorWeight: 1,
                        onTap: (idx) {
                          setState(() {
                            selectedIndex = idx;
                          });
                        },
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        tabs: [
                          CustomTab(
                            index: 0,
                            selectedIndex: selectedIndex,
                            text: 'Hackathon',
                          ),
                          CustomTab(
                            index: 1,
                            selectedIndex: selectedIndex,
                            text: 'CP',
                          ),
                          CustomTab(
                            index: 2,
                            selectedIndex: selectedIndex,
                            text: 'ACM Live',
                          ),
                        ],
                      )),
                  Expanded(
                      child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Hackathon('Hackathon'),
                      Hackathon('CP'),
                      Hackathon('ACM Live'),
                    ],
                  ))
                ],
              ),
            )),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key key,
    this.index,
    this.selectedIndex,
    this.text,
  }) : super(key: key);
  final index;
  final selectedIndex;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.safeBlockVertical * 50,
      width: SizeConfig.safeBlockHorizontal * 108,
      decoration: BoxDecoration(
        gradient: selectedIndex == index
            ? LinearGradient(
                colors: [
                  Color(0xff5372E7),
                  Color(0xff0778F5),
                ],
              )
            : null,
        borderRadius: BorderRadius.circular(60.0),
        border: selectedIndex == index
            ? null
            : Border.all(
                color: Colors.black,
                width: 2.0,
              ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.raleway(
            fontSize: SizeConfig.safeBlockVertical * 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
