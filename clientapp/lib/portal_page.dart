import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    width: double.infinity,
height: double.infinity,
decoration: BoxDecoration(
gradient: LinearGradient(
  begin: Alignment.bottomLeft,
end: Alignment.topRight,
colors: [ Color(0xff000000),Color(0xff00032D),Color(0xff000000)]),

),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           SizedBox(
             height: 10.0,
           ),
          Text(
              'PORTAL',
              style: GoogleFonts.robotoSlab(

                fontWeight: FontWeight.w500,
                color: Color(0xffF2F2F2),
                fontSize: 45.0,
              ),
            ),

          Text(
            'from \n ACM Thapar',
            style: GoogleFonts.robotoSlab(
              fontWeight: FontWeight.w500,
              color: Color(0xffF2F2F2),
              fontSize: 20.0,

            ),
          textAlign: TextAlign.center,
          )
        ],
      ) ,
    ),
  );
}
}
