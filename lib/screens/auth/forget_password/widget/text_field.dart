import 'package:flutter/material.dart';

import '../../../../constances/color_manger.dart';
import '../../../../constances/constants.dart';

Widget text_field(BuildContext context) {
  return Container(
    width: width(context),
    decoration: BoxDecoration(
        color: ColorManger.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorManger.grey)),
    child: TextFormField(),
  );
}

Widget textField({required String hint, required Icon icon , required TextInputType type  ,required bool ob}) {
  return Container(
      decoration: BoxDecoration(border: Border.all(color: ColorManger.grey)),
      child: TextField(
        textAlign: TextAlign.start,
        obscureText: ob,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: ColorManger.white),
            prefixIcon: icon),
        keyboardType: type,
      ),
  );
}
