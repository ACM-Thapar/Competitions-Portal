import 'package:clientapp/events_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

import 'package:clientapp/event%20details/event_details.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(Page());
}

class Page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
