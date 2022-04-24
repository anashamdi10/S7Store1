import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/screens/auth/forget_password/forget_password2.dart';
import 'package:s7_store/screens/auth/forget_password/widget/app_bar_fp.dart';
import 'package:s7_store/screens/auth/forget_password/widget/text_field.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';

import '../login_screen.dart';

class ForgetPassword3 extends StatelessWidget {
  const ForgetPassword3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBarFp(context: context , function: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetPassword2()));
      } ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("password_reset".tr(), style: Theme.of(context).textTheme.headline3,),
              ],
            ),
            Text("new_password".tr(), style: Theme.of(context).textTheme.bodyText1,),
            SizedBox(height: height(context)*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("new_pass".tr(), style: Theme.of(context).textTheme.bodyText1,),

              ],
            ),
            text_field(context),
            SizedBox(height: height(context)*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("reset_pass".tr(), style: Theme.of(context).textTheme.bodyText1,),
              ],
            ),
            text_field(context),
            SizedBox(height:height(context)*0.05 ,),
            button(context: context, text: "save".tr(), function: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
            })
          ],
        ) ,
      ),

    );
  }
}
