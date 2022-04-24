import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

class ContactWithUsScreen extends StatelessWidget {
  const ContactWithUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:width(context)*0.056),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.043,),
            Row(
              children: [
                Text("connect".tr() , style: Theme.of(context).textTheme.bodyText2,),
              ],
            ),
            SizedBox(height: height(context)*0.03,),
            const Image(image: AssetImage(ImageAssets.connect)),
            const Text("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها "
            ),
            SizedBox(height: height(context)*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("message".tr() , style: Theme.of(context).textTheme.subtitle2,),
              ],
            ),
            SizedBox(height: height(context)*0.01,),
            TextField(
              maxLines: 5,
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "hint_message".tr(),

              ),
            ),
            SizedBox(height: height(context)*0.05,),
            button(context: context, text: "send".tr(), function: (){}),
          ],
        ),
      ),
    );
  }
}
