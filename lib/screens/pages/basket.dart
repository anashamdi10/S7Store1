import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';
import 'package:s7_store/screens/pages/widget/widget.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height(context) * 0.05,
              ),
              Text(
                "basket".tr(),
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: height(context) * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "products".tr(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    "delete_basket".tr(),
                    style: TextStyle(
                        color: ColorManger.purple,
                        fontSize: AppSize.s16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.65,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => basketItemBuilder(context),
                    separatorBuilder: (context, index) => SizedBox(
                          height: height(context) * 0.05,
                        ),
                    itemCount: 3),
              ),
              SizedBox(
                height: height(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "total".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "pounds".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "tax".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "pounds1".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "total1".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "pounds".tr(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                      context: context,
                      text: "complete".tr(),
                      function: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: ColorManger.primary,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(AppSize.s20))),
                          builder: (context) => Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: AppSize.s10),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height(context) * 0.03,
                                ),
                                Text(
                                  "Payment",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(
                                  height: height(context) * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "way_payment".tr(),
                                      style: TextStyle(
                                          color: ColorManger.purple,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                        image: AssetImage(ImageAssets.paypal)),
                                    SizedBox(
                                      width: width(context) * 0.05,
                                    ),
                                    const Text("paypal"),
                                    const Spacer(),
                                    Radio(
                                        activeColor: ColorManger.purple,
                                        value: 1,
                                        groupValue: 1,
                                        onChanged: (value) {}),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                        image: AssetImage(ImageAssets.paypal)),
                                    SizedBox(
                                      width: width(context) * 0.05,
                                    ),
                                    const Text("paypal"),
                                    const Spacer(),
                                    Radio(
                                        value: 2,
                                        groupValue: 1,
                                        onChanged: (value) {}),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                        image: AssetImage(ImageAssets.paypal)),
                                    SizedBox(
                                      width: width(context) * 0.05,
                                    ),
                                    const Text("paypal"),
                                    const Spacer(),
                                    Radio(
                                        value: 3,
                                        groupValue: 1,
                                        onChanged: (value) {}),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Image(
                                        image: AssetImage(ImageAssets.paypal)),
                                    SizedBox(
                                      width: width(context) * 0.05
                                    ),
                                    const Text("paypal"),
                                    const Spacer(),
                                    Radio(
                                        value: 4,
                                        groupValue: 1,
                                        onChanged: (value) {}),
                                  ],
                                ),
                                SizedBox(height: height(context)*0.05,),
                                button(context: context, text: "continue".tr(), function: (){}),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
