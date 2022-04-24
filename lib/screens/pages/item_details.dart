import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import 'package:s7_store/screens/pages/basket.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width(context)*0.05),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              SizedBox(height: height(context)*0.03,),
              const Image(image:  AssetImage(ImageAssets.itemDetails)),
              SizedBox(height: height(context)*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("game_cards".tr(), style: TextStyle(color: ColorManger.purple , fontSize: 14),)
                ],
              ),
              SizedBox(height: height(context)*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Text("recharge".tr(), style: const TextStyle(fontSize: AppSize.s18),),
                    Text(
                    "170 LE",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: ColorManger.grey),
                      ),
                ],
              ),
              SizedBox(height: height(context)*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const Image(image: AssetImage(ImageAssets.points)),
                  SizedBox(width: width(context)*0.03,),
                  Text("number_points".tr() , style: Theme.of(context).textTheme.caption,),

                ],
              ),
              SizedBox(height: height(context)*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("description".tr() , style: TextStyle(color: ColorManger.purple),)
                ],
              ),
              SizedBox(height: height(context)*0.01,),
              Text("text1".tr()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle , color: ColorManger.purple)),
                    const Text("0" ,style: TextStyle(fontSize: 25), ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline , color: ColorManger.white)),
                  ],),
                  Row(children: [
                    Text(
                      "170",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: ColorManger.grey),
                    ),
                    SizedBox(
                      width: width(context) * 0.03,
                    ),
                    Text(
                      "150",
                      style: TextStyle(color: ColorManger.purple),
                    ),
                  ],)
                ],
              ),
              button(context: context, text: "add_to_basket".tr(), function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const BasketScreen()));
              }),

            ],
          ),
        ),
      ),
    );
  }
}
