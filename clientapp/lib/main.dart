import 'package:clientapp/Events%20Page/events_page.dart';
import 'package:clientapp/routers/approutes.dart';
import 'package:clientapp/routers/routenames.dart';

import 'package:provider/provider.dart';

import 'Provider/events_provider.dart';

import 'package:flutter/material.dart';

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
        onGenerateRoute: AppRoutes.onGenerateRoute ,
        initialRoute: RouteNames.login,
        
      ),
    );
  }
}
