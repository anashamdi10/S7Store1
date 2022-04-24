import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

class DetailsOrderScreen extends StatelessWidget {
  const DetailsOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding:  EdgeInsets.all(height(context)*0.024),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(context)*0.040,),
            Text("Order_details".tr() , style: Theme.of(context).textTheme.bodyText2,),
            SizedBox(height: height(context)*0.025,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("order_numb".tr() ,style: Theme.of(context).textTheme.subtitle1,), 
                Text("received".tr() ,style: Theme.of(context).textTheme.caption, )
              ],
            ),
            SizedBox(height: height(context)*0.025,),
            SizedBox(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(ImageAssets.show)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height(context)*0.03,),
                      Text("recharge".tr() ,style: Theme.of(context).textTheme.headline3,),
                      SizedBox(height: height(context)*0.01,),
                      Text("cards_game".tr() ,style: Theme.of(context).textTheme.bodyText1,),

                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle,
                              color: ColorManger.purple)),
                      const Text(
                        "0",
                        style: TextStyle(fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle_outline,
                              color: ColorManger.white)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: width(context),
              color: ColorManger.grey,
            ),
            SizedBox(height: height(context)*0.02,),
            Text("Payment_method".tr() , style: TextStyle(color: ColorManger.purple , fontSize: 14),),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
              color: ColorManger.darkBlue2,
              child:Row(
                children: [
                  const Image(
                      image: AssetImage(ImageAssets.paypal)),
                  SizedBox(
                    width: width(context) * 0.05,
                  ),
                  const Text("paypal"),
                  const Spacer(),
                  Radio(
                      activeColor: ColorManger.purple,
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {}),
                ],
              ),
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "total".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "pounds".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "tax".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "pounds1".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Container(
              height: 1, width: width(context),
              color: ColorManger.grey,
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "total1".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "pounds".tr(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            
          ],
        ),
      ) ,
    );
  }
}
