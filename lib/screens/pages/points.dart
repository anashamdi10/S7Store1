import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

import '../../constances/color_manger.dart';
import '../auth/widget/buttons.dart';

class PointsScreen extends StatelessWidget {
  const PointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height(context) * 0.043,
            ),
            Text("points".tr()),
            SizedBox(
              height: height(context) * 0.01,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
              height: height(context) * 0.3,
              width: width(context) * 0.87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s10),
                gradient: LinearGradient(
                  colors: [
                    ColorManger.darkBlue,
                    ColorManger.purple,
                    ColorManger.pink,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Text("my_score".tr()),
                  SizedBox(
                    height: height(context) * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage(ImageAssets.points)),
                      Text(
                        "point".tr(),
                        style:
                            TextStyle(color: ColorManger.yellow, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height(context) * 0.03,
                  ),
                  Text(
                    "text_points".tr(),
                    style: const TextStyle(fontSize: 11),
                  ),
                  SizedBox(
                    height: height(context) * 0.03,
                  ),
                  Container(
                    height: 1,
                    width: width(context) * 0.7,
                    color: ColorManger.white,
                  ),
                  SizedBox(
                    height: height(context) * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "equivalent".tr(),
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Text(
              "last_request".tr(),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(AppSize.s20))),
                              builder: (context) => itemBottomSheet(context));
                        },
                        child: Container(
                          height: height(context) * 0.12,
                          color: ColorManger.darkBlue2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 70,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s20),
                                  child: const Image(
                                    image: AssetImage(ImageAssets.show),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width(context) * 0.05,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height(context) * 0.03,
                                  ),
                                  Text(
                                    "number_order".tr(),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  SizedBox(
                                    height: height(context) * 0.01,
                                  ),
                                  Text(
                                    "equivalent1".tr(),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s50),
                                    color: ColorManger.babyBlue),
                                child: const Center(child: Text("50+")),
                              ),
                              SizedBox(
                                width: width(context) * 0.05,
                              )
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: height(context) * 0.05,
                      ),
                  itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
