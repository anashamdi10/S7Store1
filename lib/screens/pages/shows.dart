import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

import '../../constances/assets_manager.dart';
import '../../constances/color_manger.dart';
import '../../constances/constants.dart';
import 'more/widget/widget.dart';
import 'widget/widget.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.primary,
        appBar: appBar(context),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "shows".tr(),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context) * 0.25,
                  child: Carousel(
                    dotVerticalPadding: 2,
                    indicatorBgPadding: 0,
                    dotIncreasedColor: ColorManger.purple,
                    images: const [
                      Image(image: AssetImage(ImageAssets.homeImage)),
                      Image(image: AssetImage(ImageAssets.homeImage)),
                      Image(image: AssetImage(ImageAssets.homeImage)),
                    ],
                  ),
                ),
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
        ));
  }
}
