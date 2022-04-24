import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/screens/pages/details_order.dart';
import 'package:s7_store/screens/pages/item_details.dart';
import 'package:s7_store/screens/pages/trademarks.dart';

import '../../../constances/assets_manager.dart';
import '../../../constances/color_manger.dart';
import '../../../constances/constants.dart';
import '../../../constances/fonts_manger.dart';
import '../../../constances/valus_manger.dart';
import '../../auth/widget/buttons.dart';

Widget icons(BuildContext context, String image  ) =>
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrademarksScreen()));
      },
      child: SizedBox(
        height: height(context) * 0.1,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );

Widget itemBuilderShows(BuildContext context) =>
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemDetailsScreen()));
      },
      child: Column(
  children: [
      Container(
        height: 100,
        width: 175,
        color: ColorManger.purpleDark,
        child:  Stack(
        children: [
          Row(

           mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage(ImageAssets.show)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorManger.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 30,
                width: 30,
                child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: ColorManger.black,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        ColorManger.darkBlue,
                        ColorManger.purple,
                        ColorManger.pink,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 42,
                width: 40,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5%',
                        style:
                        Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        "discount".tr(),
                        style:
                        Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "game_cards".tr(),
                style: TextStyle(fontSize: 10, color: ColorManger.pinkPurple),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("recharge".tr(),
                  style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
          Row(
            children: [
              Text(
                "170",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: ColorManger.grey),
              ),
              SizedBox(
                width: width(context) * 0.05,
              ),
              Text(
                "150",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const Spacer(),
              Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            ColorManger.darkBlue,
                            ColorManger.purple,
                            ColorManger.pink,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_basket,
                          color: ColorManger.white,
                          size: 15,
                        )),
                  )),
            ],
          )
        ],
      )


  ],
),
    );

Widget itemBuilderFavorite(BuildContext context) =>
    InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemDetailsScreen()));
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 175,
            color: ColorManger.purpleDark,
            child:  Stack(
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(image: AssetImage(ImageAssets.show)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorManger.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 30,
                      width: 30,
                      child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: ColorManger.red,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorManger.darkBlue,
                              ColorManger.purple,
                              ColorManger.pink,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 42,
                      width: 40,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '5%',
                              style:
                              Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              "discount".tr(),
                              style:
                              Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "game_cards".tr(),
                    style: TextStyle(fontSize: 10, color: ColorManger.pinkPurple),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("recharge".tr(),
                      style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
              Row(
                children: [
                  Text(
                    "170",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: ColorManger.grey),
                  ),
                  SizedBox(
                    width: width(context) * 0.05,
                  ),
                  Text(
                    "150",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const Spacer(),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                ColorManger.darkBlue,
                                ColorManger.purple,
                                ColorManger.pink,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Center(
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_basket,
                              color: ColorManger.white,
                              size: 15,
                            )),
                      )),
                ],
              )
            ],
          )


        ],
      ),
    );


Widget itemBuilderNotification (BuildContext context)=>Container(
  height: height(context)*0.097,
  color: ColorManger.darkBlue2,
  child: Row(
    children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSize.s16),
          height: AppSize.s50,
          width: AppSize.s50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: ColorManger.orange
          ),
          child: const Image(image: AssetImage(ImageAssets.notificationImage),)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height(context)*0.02,),
          SizedBox(
              width: width(context)*0.6,
              child: Text("text".tr() , style: const TextStyle(fontSize:AppSize.s12 ),)),
         const Text("3:00 am" , style: TextStyle(fontSize: FontSize.s12),)

        ],
      )
    ],

  ) ,
);


Widget itemBottomSheet(BuildContext context)=>Container(
  padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
  height: height(context) * 0.9,
  decoration: BoxDecoration(
      color: ColorManger.darkBlue3,
      borderRadius: const BorderRadius
          .vertical(
          top: Radius.circular(AppSize.s20))),
  child: Column(
    children: [
      SizedBox(
        height: 50,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children:  [
            Positioned(
                bottom:-10,
                child: SizedBox(
                  height: height(context)*0.2,
                  width: width(context)*0.2,
                  child:   CircleAvatar(
                    backgroundImage:const  AssetImage(ImageAssets.show),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorManger.darkBlue2 , width: 10),
                          shape: BoxShape.circle

                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
      SizedBox(height: height(context)*0.01,),
      SizedBox(
        height: height(context)*0.05,
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            Text("number_order".tr() , style: Theme.of(context).textTheme.subtitle1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("order_details".tr(), style: Theme.of(context).textTheme.subtitle2,),
              ],
            ),
            SizedBox(height:height(context)*0.03 ,),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.timer , color: ColorManger.purple,),
                    SizedBox(width: width(context)*0.02 ,),
                    Text("timing".tr(),style: Theme.of(context).textTheme.subtitle2,)

                  ],
                ),
                const Spacer(),
                Text("2 Aug , 2022 - 5:30" , style: Theme.of(context).textTheme.caption,),

              ],
            ),
            SizedBox(height: height(context)*0.01,),
            Container(
              height: height(context)*0.001,
              width: width(context),
              color: ColorManger.white,
            ),
            SizedBox(height: height(context)*0.03,),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.card_giftcard , color: ColorManger.purple,),
                    SizedBox(width: width(context)*0.02 ,),
                    Text("payed".tr(),style: Theme.of(context).textTheme.subtitle2,)

                  ],
                ),
                const Spacer(),
                Text("500 pound" , style: Theme.of(context).textTheme.caption,),

              ],
            ),
            SizedBox(height: height(context)*0.01,),
            Container(
              height: height(context)*0.002,
              width: width(context),
              color: ColorManger.white,
            ),
            SizedBox(height: height(context)*0.03,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.add_circle_outline , color: ColorManger.purple,),
                        SizedBox(width: width(context)*0.02 ,),
                        Text("earn_points".tr(),style: const TextStyle(fontSize: 12),),
                      ],
                    ),

                    Text("equals".tr(),style:TextStyle(fontSize: AppSize.s8 ,color: ColorManger.purple),)
                  ],
                ),
                const Spacer(),
                Text("500 point" , style: Theme.of(context).textTheme.caption,),

              ],
            ),
            SizedBox(height: height(context)*0.03,),
            button(context: context, text: "help".tr(), function: (){})
          ],
        ),
      ),


    ],
  ),
);

Widget itemBottomSheetDigital(BuildContext context)=> Container(
  height: height(context)*0.46,

  decoration: BoxDecoration(
      color: ColorManger.darkBlue3,
      borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppSize.s20)
      )
  ),

  child: Padding(
    padding: const EdgeInsets.all(AppSize.s20),
    child: Column(
      children:  [
        Text("digital_stores".tr() , style: Theme.of(context).textTheme.bodyText2,),
        SizedBox(
          height: height(context)*0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("department".tr(), style: Theme.of(context).textTheme.subtitle2,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height(context)*0.05,
              color: ColorManger.darkBlue2,
              width: width(context)*0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text("choose_department"),
                  Icon(Icons.arrow_circle_down , color: ColorManger.white,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height(context)*0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("store".tr(), style: Theme.of(context).textTheme.subtitle2,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height(context)*0.05,
              color: ColorManger.darkBlue2,
              width: width(context)*0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text("choose_department"),
                  Icon(Icons.arrow_circle_down , color: ColorManger.white,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: height(context)*0.04,),
        button(function: (){} , text: "search".tr() , context: context)
      ],

    ),
  ),
);

Widget itemMyOrders(BuildContext context)=>InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsOrderScreen()));
  },
  child: SizedBox(
      height: 90,
      child: Row(
        children: [
          Container(
              height: 80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage(ImageAssets.show)))
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height(context)*0.03,),
              Row(
                children: [
                  Text("number_order".tr(), style: Theme.of(context).textTheme.subtitle2,),
                  SizedBox(width: width(context)*0.05,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorManger.darkBlue2,
                        borderRadius: BorderRadius.circular(AppSize.s8)
                    ),
                    child: Text("receipt".tr() , style: Theme.of(context).textTheme.caption,) ,
                  )
                ],
              ),
              Text("3/11/2021" , style: Theme.of(context).textTheme.caption,)
            ],
          ),
        ],
      )
  )
);

Widget basketItemBuilder(BuildContext context) =>Row(
  children: [
    const Image(image: AssetImage(ImageAssets.show)),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "recharge".tr(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          height: height(context) * 0.01,
        ),
        Text("recharge".tr(),
            style: TextStyle(
                color: ColorManger.purple,
                fontSize: AppSize.s12)),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "170",
                  style: TextStyle(
                      decoration:
                      TextDecoration.lineThrough,
                      color: ColorManger.grey),
                ),
                SizedBox(
                  width: width(context) * 0.03,
                ),
                Text(
                  "150",
                  style: TextStyle(
                      color: ColorManger.purple),
                ),
              ],
            ),
            SizedBox(
              width: width(context) * 0.03,
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
                    icon: Icon(Icons.remove_circle_outline,
                        color: ColorManger.white)),
              ],
            ),
          ],
        ),
      ],
    )
  ],
);