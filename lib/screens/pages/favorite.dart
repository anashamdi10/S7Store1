import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

import '../../constances/constants.dart';
import 'widget/widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width(context)*0.056),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(context)*0.043,),
              Text("favorite".tr()),
            SizedBox(height: height(context)*0.03,),
            Expanded(
                child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    shrinkWrap: true,
                    crossAxisCount: 2, children: [
                  itemBuilderFavorite(context),
                  itemBuilderFavorite(context),
                  itemBuilderFavorite(context),
                  itemBuilderFavorite(context),
                  itemBuilderFavorite(context),
                  itemBuilderFavorite(context),
                ]))
          ],
        ),
      ),
    );
  }
}
