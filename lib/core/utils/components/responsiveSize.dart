
import 'package:flutter/material.dart';


extension Sizing on num {
  ///Responsive height
  rh(context) {
    const double aspectedScreenHeight = 812;

    Size size = MediaQuery.of(context).size;
    double responsiveHeight = size.height * (this / aspectedScreenHeight);
    return responsiveHeight;
  }

  ///Responsive width
  rw(context) {
    //!Don't change  [375]
    const double aspectedScreenWidth = 375;

    Size size = MediaQuery.of(context).size;
    double responsiveWidth = size.width * (this / aspectedScreenWidth);
    return responsiveWidth;
  }

  ///Responsive font
  rf(context) {
    const double aspectedScreenHeight = 812;
    return (this / aspectedScreenHeight) * MediaQuery.of(context).size.height;
  }
}
