
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/fonts_manger.dart';
import 'package:s7_store/constances/style_manger.dart';
import 'package:s7_store/constances/valus_manger.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors
      primaryColor: ColorManger.primary,
      disabledColor: ColorManger.gray1,
      splashColor: ColorManger.primary,
      //app bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManger.primary,
          elevation: AppSize.s4,

          titleTextStyle: getRegularStyle(fontSize: FontSize.s16,color: ColorManger.white),
      ),
      // button theme
        buttonTheme:ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManger.gray1, buttonColor: ColorManger.primary,
          splashColor: ColorManger.primary
        ),

      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManger.white , fontSize: FontSize.s17),
          primary: ColorManger.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        )
      ),
      //text theme
        textTheme: TextTheme(
          headline1: getBoldStyle(color: ColorManger.white, fontSize: FontSize.s20),
          subtitle1: getSemiBoldStyle(color: ColorManger.white , fontSize: FontSize.s16),
          subtitle2: getSemiBoldStyle(color: ColorManger.white , fontSize: FontSize.s14),
          caption:   getRegularStyle(color: ColorManger.white , fontSize: FontSize.s10),
          headline2: getBoldStyle(color: ColorManger.white, fontSize: AppSize.s20 ),
          bodyText1: getSemiBoldStyle(color: ColorManger.white , fontSize: AppSize.s10),
          bodyText2: getBoldStyle(color: ColorManger.white , fontSize: AppSize.s16),
          headline3: getSemiBoldStyle(color: ColorManger.white, fontSize: AppSize.s20),
          headline4: getLightStyle(color: ColorManger.white, fontSize: AppSize.s14),
          headline5: getBoldStyle(color: ColorManger.white , fontSize: 10),
          headline6:  getBoldStyle(color: ColorManger.white , fontSize: 14),

        ),
      //input decoration theme (text form field )

        inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManger.grey, fontSize: FontSize.s14),
      labelStyle: getMediumStyle(color: ColorManger.grey, fontSize: FontSize.s14),
       errorStyle: getRegularStyle(color: ColorManger.red),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          errorBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: ColorManger.red, width:  AppSize.s1_5),
              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManger.primary, width:  AppSize.s1_5),
              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
  )
      );
}
