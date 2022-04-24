import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/auth/widget/buttons.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

import '../auth/forget_password/widget/text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),
      backgroundColor: ColorManger.primary,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s24),
          child: Column(
            children: [
              SizedBox(height: height(context)*0.1,),
              Text("profile".tr() , style: Theme.of(context).textTheme.bodyText2,),
              SizedBox(
                height: height(context)*0.05,
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
                  hint: "name".tr(),
                  icon: Icon(
                    Icons.person,
                    color: ColorManger.grey,
                  ),
                  ob: false, type: TextInputType.text),
              SizedBox(height: height(context)*0.03,),
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
                    Icons.phone,
                    color: ColorManger.grey,
                  ),
                  ob: false, type: TextInputType.phone),
              SizedBox(height: height(context)*0.03,),

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
                  hint: "email".tr(),
                  icon: Icon(
                    Icons.email_outlined,
                    color: ColorManger.grey,
                  ),
                  ob: false, type: TextInputType.emailAddress),
              SizedBox(height: height(context)*0.03,),

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
                  hint: "password".tr(),
                  icon: Icon(
                    Icons.lock,
                    color: ColorManger.grey,
                  ),
                  ob: true, type: TextInputType.text),
              SizedBox(height: height(context)*0.03,),

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
                  hint: "confirm_pass".tr(),
                  icon: Icon(
                    Icons.lock,
                    color: ColorManger.grey,
                  ),
                  ob: true, type: TextInputType.text),
              SizedBox(height: height(context)*0.03,),

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
                  hint: "country".tr(),
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: ColorManger.grey,
                  ),
                  ob: false, type: TextInputType.text),
              SizedBox(height: height(context)*0.03,),
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
                  hint: "governorate".tr(),
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: ColorManger.grey,
                  ),
                  ob: false, type: TextInputType.text),
              SizedBox(height: height(context)*0.03,),

              button(context: context, text: "save".tr(), function: (){})

            ],
          ),
        ),
      ),
    );
  }
}
