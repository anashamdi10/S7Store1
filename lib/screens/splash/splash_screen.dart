import 'dart:async';

import 'package:flutter/material.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/strings_manger.dart';

import '../on_boaeding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingScreen()));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManger.primary,
      body:const  Center(
        child: Image(image: AssetImage(ImageAssets.splashLogo),),
      ),
    );
  }
}
