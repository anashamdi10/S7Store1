import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

import '../auth/widget/buttons.dart';

class DigitalStore extends StatelessWidget {
  const DigitalStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        backgroundColor: ColorManger.primary,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width(context)*0.05),
          child: Column(
            children: [
              SizedBox(
                height: height(context) * 0.04,
              ),
              Row(
                  children: [
                Text("digital_stores".tr()),
                const Spacer(),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(AppSize.s20)
                          )
                        ),
                        builder:(context) =>itemBottomSheetDigital(context) );
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10) ,
                        gradient: LinearGradient(colors: [
                      ColorManger.darkBlue,
                      ColorManger.purple,
                      ColorManger.pink,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                    child: const Image(image: AssetImage(ImageAssets.slider),),
                  ),
                ),
              ]),
              SizedBox(height: height(context)*0.05,),
              Expanded(
                  child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      shrinkWrap: true,
                      crossAxisCount: 2, children: [
                    itemBuilderShows(context),
                    itemBuilderShows(context),
                    itemBuilderShows(context),
                    itemBuilderShows(context),
                    itemBuilderShows(context),
                    itemBuilderShows(context),
                  ]))
            ],
          ),
        ));
  }
}
