import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/screens/auth/register.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import '../../constances/constants.dart';
import '../pages/main_screens.dart';
import 'forget_password/forget_password1.dart';
import 'forget_password/widget/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width(context) * 0.06),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(ImageAssets.loginLogo),
                    Image.asset(ImageAssets.backGround),
                  ],
                ),
                SizedBox(
                  height: height(context) * 0.1,
                ),
                Text(
                  "Login".tr(),
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: height(context) * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "mobile_number".tr(),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      width: width(context) * 0.02,
                    ),
                  ],
                ),
                text_field(context),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "password".tr(),
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SizedBox(
                      width: width(context) * 0.02,
                    ),
                  ],
                ),
                Container(
                  width: width(context),
                  decoration: BoxDecoration(
                      color: ColorManger.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorManger.grey)),
                  child: TextFormField(
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword1()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "forget_password".tr(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.08,
                ),
                button(context: context, text: "Login".tr(), function: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainScreens()));
                }),
                SizedBox(
                  height: height(context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't_account".tr(),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    InkWell(
                      child: Text(
                        "create_account".tr(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
