import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    width: double.infinity,
height: double.infinity,
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [Color(0xff00032D), Color(0xff000000),Color(0xff05001D)]),
),
  }
}
