

import 'package:clientapp/Events%20Page/events_page.dart';
import 'package:clientapp/login_page.dart';
import 'package:provider/provider.dart';

import 'Provider/events_provider.dart';
import 'portal_page.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

import 'package:clientapp/event%20details/event_details.dart';



void main() {
  runApp(Page());
}

class Page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => EventsProvider()),
      ],
      
      child: MaterialApp(
        home: Eventspage(),
      ),
    );
  }
}
