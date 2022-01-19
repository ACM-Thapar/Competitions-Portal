import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          child: Padding(
            padding:  EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.montserrat(
            
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF2F2F2),
                      fontSize: 45.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                 SizedBox(
                   height: 50.0,
                 ),
            
                 Row(
            
                   children: [
                     CircleAvatar(
                       radius: 45.0,
                       backgroundColor: Color(0xffF2F2F2),
                       child: Icon(
                         Icons.camera_alt_rounded,
                         size: 60.0,
                         color: Color(0xff3F3D56),
                       ),
                     ),
                     SizedBox(
                       width: 50,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Name',
                           style: GoogleFonts.raleway(
                             fontWeight: FontWeight.w500,
                             color: Color(0xffF2F2F2),
                             fontSize: 25.0,
                           ),
                           textAlign: TextAlign.start,
                         ),
                         SizedBox(
                           width: 150.0,
                           child: TextField(
                             style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: Color(0xffF2F2F2),
                               fontSize: 15.0,
                             ),
                             decoration: InputDecoration(
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(
                                 color: Colors.white,
                               ),
                             ),
                               focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Colors.white,
                                 ),
                               ),
                             ),
                             autofocus: false,
                             cursorColor:Colors.white,
                             textAlign: TextAlign.start,
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
            
                  SizedBox(
                    height: 50.0,
                  ),
            
                  Text('Email',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 25.0,
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    autofocus: false,
                    cursorColor:Colors.white,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
            
                  Text('Github Profile',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 25.0,
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    autofocus: false,
                    cursorColor:Colors.white,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Linkedin Profile',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 25.0,
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    autofocus: false,
                    cursorColor:Colors.white,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Contact Number',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 25.0,
                    ),
                  ),
                  TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF2F2F2),
                      fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    autofocus: false,
                    cursorColor:Colors.white,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
    ),
    );
  }
}
