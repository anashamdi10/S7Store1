import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/fonts_manger.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

import '../../constances/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s20),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.045,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("notification".tr()),
              ],
            ),
            SizedBox(height: height(context)*0.02,),
           Expanded(child: ListView.separated(
             physics: const BouncingScrollPhysics(),
               itemCount: 6,
               itemBuilder: (context, index) {
             return  itemBuilderNotification(context);
           } , separatorBuilder:(context , index) =>SizedBox(height:height(context)*0.05,)))
          ],
        ),
      ),
    );
  }
}
