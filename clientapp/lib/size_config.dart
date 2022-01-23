import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// This classe is used to make the design responsive
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;

  static double _safeAreaHorizontal;
  static  double _safeAreaVertical;
  static  double safeBlockHorizontal;
  static  double safeBlockVertical;
  static  bool screenHeightConstraint;
  static  bool screenWidthConstraint;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right; //calculates horizontal  safearea
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom; //calculates vertical  safearea
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) /
        375; // this is used for horizontal dimension the % which a widget takes on screen is multiplied to it
    safeBlockVertical = (screenHeight - _safeAreaVertical) /
        812; //this is used for vertical dimensions the % which a widget takes on screen is multiplied to it
    screenHeightConstraint = screenHeight > 414;
    screenWidthConstraint = screenHeight > 768;
  }
}
