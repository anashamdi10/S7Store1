
import 'package:flutter/cupertino.dart';

import 'fonts_manger.dart';

TextStyle _getTextStyle(double fontSize, FontWeight weight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: weight);
}
//regular
TextStyle getRegularStyle ({double fontSize = FontSize.s12, required Color  color,}){
 return _getTextStyle(fontSize, FontWeightManger.regular, color);
}
//medium
TextStyle getMediumStyle ({double fontSize = FontSize.s12, required Color  color,}){
  return _getTextStyle(fontSize, FontWeightManger.medium, color);
}

//light
TextStyle getLightStyle ({double fontSize = FontSize.s12, required Color  color,}){
  return _getTextStyle(fontSize, FontWeightManger.light, color);
}

// bold

TextStyle getBoldStyle ({double fontSize = FontSize.s12, required Color  color,}){
  return _getTextStyle(fontSize, FontWeightManger.bold, color);
}

// semi  bold

TextStyle getSemiBoldStyle ({double fontSize = FontSize.s12, required Color  color,}){
  return _getTextStyle(fontSize, FontWeightManger.semiBold, color);
}