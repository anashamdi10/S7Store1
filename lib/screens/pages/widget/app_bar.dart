
import 'package:flutter/material.dart';
import 'package:s7_store/screens/pages/notification.dart';

import '../../../constances/assets_manager.dart';

AppBar appBar(BuildContext context)=>AppBar(
  elevation: 0.0,
  title:  const Image(image: AssetImage(ImageAssets.mainLogo)),
  centerTitle: true,
  actions: [
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationScreen()));
    }, icon:const Icon( Icons.notifications_none)),
    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_basket)),
  ],
) ;

AppBar appBar1()=>AppBar(
  elevation: 0.0,
  title: const Image(image: AssetImage(ImageAssets.mainLogo)),
  centerTitle: true,
);