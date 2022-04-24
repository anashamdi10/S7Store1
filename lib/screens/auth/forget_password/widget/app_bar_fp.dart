import 'package:flutter/material.dart';

import '../../../../constances/color_manger.dart';

AppBar appBarFp({required BuildContext context , required VoidCallback function}) => AppBar(
      backgroundColor: ColorManger.transparent,
      elevation: 0.0,
    leading:  IconButton(onPressed:function, icon: const Icon(Icons.arrow_back , color: Colors.white,))
    );
