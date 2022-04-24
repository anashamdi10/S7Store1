import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/screens/auth/forget_password/forget_password3.dart';
import 'package:s7_store/screens/auth/forget_password/widget/app_bar_fp.dart';
import 'package:s7_store/screens/auth/forget_password/widget/contanier_box.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';

import '../../../constances/assets_manager.dart';
import '../../../constances/constants.dart';
import 'forget_password1.dart';

class ForgetPassword2 extends StatelessWidget {
  const ForgetPassword2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBarFp(context: context , function: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetPassword1()));
      }),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Password_recovery".tr(), style: Theme.of(context).textTheme.headline2,),
              ],
            ),
            SizedBox(height: height(context)*0.046,),
            const Image(image: AssetImage(ImageAssets.forgetPassword2)),
            SizedBox(height: height(context)*0.04,),
            Text(
              "words".tr(),
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height(context)*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                contanierBox(context, "5"),
                contanierBox(context, "7"),
                contanierBox(context, "2"),
                contanierBox(context, ""),
              ],
            ),
            SizedBox(
              height: height(context)*0.05,
            ),
            button(context: context, text: "send".tr(), function: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetPassword3()));
            }),
            SizedBox(height: height(context)*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("resend".tr(), style: Theme.of(context).textTheme.bodyText1,),
                Text("don't_send".tr(), style: Theme.of(context).textTheme.headline4,),


              ],
            )
          ],
        ),
      ),
    );
  }
}
