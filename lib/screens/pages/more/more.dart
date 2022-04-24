import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/screens/auth/login_screen.dart';
import 'package:s7_store/screens/pages/connect_with_us.dart';
import 'package:s7_store/screens/pages/more/widget/widget.dart';
import 'package:s7_store/screens/pages/my_orders.dart';
import 'package:s7_store/screens/pages/notification.dart';
import 'package:s7_store/screens/pages/profile_screen.dart';

import '../../../constances/assets_manager.dart';
import '../../../constances/color_manger.dart';

import '../../../constances/valus_manger.dart';
import '../favorite.dart';
import '../terms_screen.dart';
import '../who_are_we_screen.dart';

class MoreScreens extends StatelessWidget {
  const MoreScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) * 0.056),
        child: Column(
          children: [
            SizedBox(
              height: height(context) * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage(ImageAssets.moreLogo)),
              ],
            ),
            SizedBox(
              height: height(context) * 0.10,
            ),
            itemBuilder(
                context: context,
                text: "profile".tr(),
                image: const Image(image: AssetImage(ImageAssets.call),),
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "favorite".tr(),
                image: const Image(image: AssetImage(ImageAssets.favorite),),
                function: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const FavoriteScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "orders".tr(),
                image: const Image(image: AssetImage(ImageAssets.orders),),
                function: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyOrdersScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
        Container(
            padding: EdgeInsets.all(AppSize.s8),
            height: height(context) * 0.05,
            width: width(context) * 0.89,
            decoration: BoxDecoration(
              color: ColorManger.darkblue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
            const Image(image: AssetImage(ImageAssets.notification),),
                SizedBox(
                  width: width(context) * 0.02,
                ),
                Text(
                  "notification".tr(),
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Spacer(),
                Switch(value: false, onChanged: (value)=>{})
              ],
            )),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "lang".tr(),
                image: const Image(image: AssetImage(ImageAssets.lang),),
                function: () {
                  showDialog(context: context, builder: (context){
                    return dialog(context);
                  });
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "who_we".tr(),
                image: const Image(image: AssetImage(ImageAssets.who),),
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const WhoWeAreScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "terms".tr(),
                image: const Image(image: AssetImage(ImageAssets.orders),),
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const TermsScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "contact".tr(),
                image: const Image(image: AssetImage(ImageAssets.mask),),
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactWithUsScreen()));
                }),
            SizedBox(
              height: height(context) * 0.01,
            ),
            itemBuilder(
                context: context,
                text: "Log out",
                image: const Image(image: AssetImage(ImageAssets.logout),),
                function: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
