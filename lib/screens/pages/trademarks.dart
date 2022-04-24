import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

import '../../constances/assets_manager.dart';

class TrademarksScreen extends StatelessWidget {
  const TrademarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: ColorManger.primary,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Netflix"),
                const Spacer(),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(AppSize.s20)
                            )
                        ),
                        builder:(context) =>SingleChildScrollView(
                          child: Container(
                            color: ColorManger.primary,
                            child: Padding(
                              padding: const EdgeInsets.all(AppSize.s20),
                              child: Column(
                                children:  [
                                  const Text("Netflix",),
                                  SizedBox(height: height(context)*0.05,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                        Text("section".tr(), style: Theme.of(context).textTheme.subtitle2,),
                                    ],
                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  Container(
                                    height: height(context)*0.07,
                                    padding: const EdgeInsets.all(AppSize.s10),
                                    width: width(context),
                                    decoration: BoxDecoration(color: ColorManger.darkBlue2,borderRadius: BorderRadius.circular(AppSize.s10)),
                                    child: Text("choose_section".tr()),

                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("section".tr(), style: Theme.of(context).textTheme.subtitle2,),

                                    ],
                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  Container(
                                    height: height(context)*0.07,
                                    padding: const EdgeInsets.all(AppSize.s10),
                                    width: width(context),
                                    decoration: BoxDecoration(color: ColorManger.darkBlue2,borderRadius: BorderRadius.circular(AppSize.s10)),
                                    child: Text("choose_section".tr()),

                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("store".tr(), style: Theme.of(context).textTheme.subtitle2,),

                                    ],
                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  Container(
                                    height: height(context)*0.07,
                                    padding: const EdgeInsets.all(AppSize.s10),
                                    width: width(context),
                                    decoration: BoxDecoration(color: ColorManger.darkBlue2,borderRadius: BorderRadius.circular(AppSize.s10)),
                                    child: Text("choose_section".tr()),

                                  ),
                                  SizedBox(height: height(context)*0.03,),
                                  button(context: context, text: "search".tr(), function: (){})
                                ],
                              ),
                            ),
                          ),
                        )
                    );
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
                    child:  const Image(image: AssetImage(ImageAssets.slider),),
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}
