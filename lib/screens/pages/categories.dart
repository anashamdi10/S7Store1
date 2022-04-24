import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/digital_store.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import '../../constances/assets_manager.dart';
import '../../constances/color_manger.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar(context),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height(context)*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  SizedBox(width: width(context)*0.05,),
                  Text("category".tr()),
                ],
              ),
              SizedBox(height: height(context)*0.044,),
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
              SizedBox(height: height(context)*0.055,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: ColorManger.darkblue,
                    height: AppSize.s112,
                    width:  AppSize.s112,
                    child: Column(
                      children: [
                          SizedBox(height:height(context)*0.02 ,),
                          const Image(image: AssetImage(ImageAssets.cards)),
                          SizedBox(height:height(context)*0.02 ,),
                          Text("game_cards".tr()),
                      ],
                    ),
                  ),
                  Container(
                    color: ColorManger.darkblue,
                    height: AppSize.s112,
                    width: AppSize.s112,
                    child: Column(
                      children: [
                        SizedBox(height:height(context)*0.02 ,),
                        const Image(image: AssetImage(ImageAssets.games)),
                        SizedBox(height:height(context)*0.02 ,),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("game_plateform".tr(),style: const TextStyle(fontSize: AppSize.s12),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DigitalStore()));
                    },
                    child: Container(
                      color: ColorManger.darkblue,
                      height: AppSize.s112,
                      width: AppSize.s112,
                      child: Column(
                        children: [
                          SizedBox(height:height(context)*0.02 ,),
                          const Image(image: AssetImage(ImageAssets.store)),
                          SizedBox(height:height(context)*0.02 ,),
                          Text("digital_stores".tr()),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height(context)*0.055,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: ColorManger.darkblue,
                    height: AppSize.s112,
                    width: AppSize.s112,
                    child: Column(
                      children: [
                        SizedBox(height:height(context)*0.02 ,),
                        const Image(image: AssetImage(ImageAssets.cards)),
                        SizedBox(height:height(context)*0.02 ,),
                        Text("game_cards".tr()),
                      ],
                    ),
                  ),
                  Container(
                    color: ColorManger.darkblue,
                    height: AppSize.s112,
                    width: AppSize.s112,
                    child: Column(
                      children: [
                        SizedBox(height:height(context)*0.02 ,),
                        const Image(image: AssetImage(ImageAssets.games)),
                        SizedBox(height:height(context)*0.02 ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("game_plateform".tr(), style: const TextStyle(fontSize: AppSize.s12),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: ColorManger.darkblue,
                    height: AppSize.s112,
                    width: AppSize.s112,
                    child: Column(
                      children: [
                        SizedBox(height:height(context)*0.02 ,),
                        const Image(image: AssetImage(ImageAssets.store)),
                        SizedBox(height:height(context)*0.02 ,),
                        Text("digital_stores".tr()),
                      ],
                    ),
                  )
                ],

              ),
            ],
          ),
        ),
      ),
      );
  }
}
