import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';

import '../../constances/assets_manager.dart';
import 'forget_password/widget/text_field.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height(context) * 0.27,
                width: width(context),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(ImageAssets.loginLogo),
                    Image.asset(ImageAssets.backGround),
                  ],
                ),
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
              Text(
                "new_account".tr(),
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: height(context) * 0.032,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "name".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                  hint: "full_name".tr(),
                  icon: Icon(
                    Icons.person,
                    color: ColorManger.white,
                  ),
                  ob: false,
                  type: TextInputType.text),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "phone_numb".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                  hint: "phone_numb".tr(),
                  icon: Icon(
                    Icons.call,
                    color: ColorManger.white,
                  ),
                  ob: false,
                  type: TextInputType.number),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "email".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                  hint:  "email".tr(),
                  icon: Icon(
                    Icons.email_outlined,
                    color: ColorManger.white,
                  ),
                  ob: false,
                  type: TextInputType.emailAddress),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "password".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                ob: true,
                  hint: "",
                  icon: Icon(
                    Icons.lock,
                    color: ColorManger.white,
                  ),
                  type: TextInputType.emailAddress),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "confirm_pass".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),

              textField(
                  ob: true,
                  hint: "",
                  icon: Icon(
                    Icons.lock,
                    color: ColorManger.white,
                  ),
                  type: TextInputType.emailAddress),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "country".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                  ob: true,
                  hint: "",
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: ColorManger.white,
                  ),
                  type: TextInputType.emailAddress),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "governorate".tr(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              textField(
                  ob: true,
                  hint: "",
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: ColorManger.white,
                  ),
                  type: TextInputType.emailAddress),

              SizedBox(
                height: height(context)*0.03,
              ),
              button(function: (){} , text: "new_acc".tr(),context: context ),
              SizedBox(
                height: height(context)*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      },
                      child: Text("Login".tr() , style: Theme.of(context).textTheme.subtitle2,)),
                  Text("have_acc".tr(),  style: Theme.of(context).textTheme.subtitle2,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
