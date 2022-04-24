import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/search.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';
import '../../constances/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar(context),
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:width(context)*0.05),
            child: Column(
              children: [
                Row(
                  children:  [
                   Icon(Icons.wash_sharp , color: ColorManger.white,),
                    SizedBox(width: width(context)*0.03,),
                    Text("welcome".tr() , style: Theme.of(context).textTheme.bodyText2,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width(context)*0.1,),
                    Text("price".tr() , style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
                SizedBox(height: height(context)*0.02,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(AppSize.s8),
                    width: width(context)*0.85,
                    color: ColorManger.darkblue,
                    child: Row(
                      children: [
                        Text("search_cate".tr()),
                        const Spacer(),
                        Icon(Icons.search , color: ColorManger.white,)
                      ],
                    ),
                    ),
                ),

                SizedBox(height: height(context)*0.25,
                  child:Carousel(dotVerticalPadding: 2,
                    indicatorBgPadding:0,
                    dotIncreasedColor: ColorManger.purple,
                    images:  const [
                        Image(image: AssetImage(ImageAssets.homeImage)),
                        Image(image: AssetImage(ImageAssets.homeImage)),
                        Image(image: AssetImage(ImageAssets.homeImage)),
                    ],
                  )
                  ,),
                SizedBox(height: height(context)*0.025,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("trademarks".tr()),
                  ],
                ),
                Expanded(
                  child: GridView.count(crossAxisCount: 2, children: [
                    icons(context , ImageAssets.netflix ),
                    Column(
                      children: [
                        SizedBox(height: height(context)*0.01,),
                        icons(context , ImageAssets.xbox),
                        icons(context , ImageAssets.pupg),
                      ],
                    ),

                    icons(context , ImageAssets.anghami,),
                    icons(context , ImageAssets.noon),
                    Column(
                      children: [
                        SizedBox(height: height(context)*0.01,),
                        icons(context , ImageAssets.jumia),
                        icons(context , ImageAssets.shahid),
                      ],
                    ),
                    icons(context , ImageAssets.pupg),


                  ],),
                )

              ],
            ),
          ),
        ),
    );
  }
}
