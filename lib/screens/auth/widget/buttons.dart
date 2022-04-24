

import 'package:flutter/material.dart';

import '../../../constances/color_manger.dart';
import '../../../constances/constants.dart';
import '../../../constances/valus_manger.dart';

Widget button( {required BuildContext context,required String text ,required VoidCallback function}) {
  return  InkWell(
    onTap: function,
    child: Container(
      height: height(context)*0.059,
      width: width(context)*0.80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              ColorManger.darkBlue,
              ColorManger.purple,
              ColorManger.pink,
            ]
        ),
        borderRadius: BorderRadius.circular(AppSize.s20),
      ),
      child: Center(child: Text(text, style: Theme.of(context).textTheme.bodyText2,)),
    ),
  );
}