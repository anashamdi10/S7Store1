
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/screens/auth/forget_password/widget/app_bar_fp.dart';

import 'package:s7_store/screens/auth/forget_password/widget/text_field.dart';

import '../../../constances/assets_manager.dart';
import '../login_screen.dart';
import '../widget/buttons.dart';
import 'forget_password2.dart';

class ForgetPassword1 extends StatelessWidget {
  const ForgetPassword1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar:appBarFp(context: context , function: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
      }),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: Column(
          children: [
            SizedBox(
              height: height(context) * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "forget_password".tr(),
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            SizedBox(
              height: height(context) * 0.04,
            ),
            const Image(image: AssetImage(ImageAssets.forgetPassword)),
            SizedBox(
              height: height(context) * 0.045,
            ),
            Text(
              "forget".tr(),
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height(context)*0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("email_phone".tr(),style: Theme.of(context).textTheme.bodyText1,),
                SizedBox(width: width(context)*0.05,),
              ],
            ),
            text_field(context),
            SizedBox(height: height(context)*0.05,),
            button(context: context , text: "send".tr(), function: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetPassword2()));
            })

          ],
        ),
      ),
    );
  }
}
