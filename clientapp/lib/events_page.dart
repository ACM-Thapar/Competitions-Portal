import 'dart:ui';
import 'package:clientapp/components/event_tile_live.dart';
import 'package:clientapp/components/event_tile_upcoming.dart';

import 'components/event_tile_past.dart';
import 'package:clientapp/components/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Eventspage extends StatefulWidget {
  @override
  _EventspageState createState() => _EventspageState();
}

class _EventspageState extends State<Eventspage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Container(
                color: Colors.black,
                width: 360,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int i) {
                    return Eventtile(
                      i: i,
                      title: "HACKLIPSE",
                      subtitle:
                          "Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET.",
                      date: "29 December 2020",
                    );
                  },
                ),
              ),
              Container(
                color: Colors.black,
                width: 360,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int i) {
                    return Eventtilelive(
                      i: i,
                      title: "HACKLIPSE",
                      subtitle:
                          "Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET.",
                      date: "29 December 2020",
                      time: "1:00 PM - 6:00 PM",
                    );
                  },
                ),
              ),
              Container(
                color: Colors.black,
                width: 360,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int i) {
                    return Eventtileupcoming(
                      i: i,
                      title: "HACKLIPSE",
                      subtitle:
                          "Haclipse is a full-fledged virtual 24-hour hackathon for college students organized by ACM TIET.",
                      date: "29 December 2020",
                    );
                  },
                ),
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(text: 'PAST'),
                Tab(text: 'LIVE'),
                Tab(text: 'UPCOMING'),
              ],
            ),
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
        ),
      ),
    );
  }
}
