import 'package:clientapp/Events%20Page/events_page.dart';
import 'package:clientapp/Events%20Page/hackathon.dart';
import 'package:clientapp/Model/event.dart';
import 'package:clientapp/event%20details/event_details.dart';
import 'package:clientapp/login_page.dart';
import 'package:clientapp/routers/routenames.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../profile_page.dart';

class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.events:
        return MaterialPageRoute(builder: (_) => Eventspage());
        break;
      case RouteNames.eventDetail:
        var eventData = settings.arguments as Event;
        return MaterialPageRoute(builder: (_) => EventDetails(event: eventData,));
        break;
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
        break;
      case RouteNames.profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
        break;
      case RouteNames.hackathon:
        return MaterialPageRoute(builder: (_) => Hackathon('Hackatohn'));
        break;
    }
  }
}