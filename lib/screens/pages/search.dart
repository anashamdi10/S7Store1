import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

import '../../constances/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: ColorManger.primary,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("search".tr()),
            Row(
              children: [
                Text("price".tr() , style: Theme.of(context).textTheme.bodyText2,),
              ],
            ),
            SizedBox(height: height(context)*0.03,),
            Container(
              width: width(context)*0.85,
              color: ColorManger.darkblue,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search_cate".tr(),
                    suffixIcon: Icon(Icons.search ,color: ColorManger.white,)
                ),
              ),
            ),
            SizedBox(height: height(context)*0.03,),
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
