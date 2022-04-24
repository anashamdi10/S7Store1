import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import '../../constances/constants.dart';
import 'widget/widget.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar1(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) * 0.056),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.043,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("orders".tr(), style: Theme.of(context).textTheme.bodyText2,),
              ],),

            Expanded(child: ListView.separated(
                itemBuilder:(context , index)=> itemMyOrders(context),
                separatorBuilder: (context, index)=>Container(height: 0.1, width: width(context),color: ColorManger.white,), itemCount: 6
            ))
          ],
        ),
      ),
    );
  }
}
