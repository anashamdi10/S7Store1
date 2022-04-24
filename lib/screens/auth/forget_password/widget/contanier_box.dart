
import 'package:flutter/cupertino.dart';

import '../../../../constances/color_manger.dart';
import '../../../../constances/constants.dart';

Widget contanierBox(BuildContext context , String number){
  return  Container(
    height: height(context)*0.07,
    width:width(context)*0.17,
    decoration: BoxDecoration(
        color: ColorManger.white,
        borderRadius: BorderRadius.circular(8)
    ),
    child: Center(child: Text(number, style: TextStyle(color: ColorManger.black),)),
  );
}