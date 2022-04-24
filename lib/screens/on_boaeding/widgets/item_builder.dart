import 'package:flutter/material.dart';

import '../../../constances/constants.dart';
import '../../../models/on_boarding/on_boarding_model.dart';

Widget itemBuilder (int index, List<OnBordingModel> contents,BuildContext context ){
  return Column(
    children: [
      Container(
          width: width(context)*0.8,
          child: Image(image: AssetImage(contents[index].image))),
      SizedBox(
        height: height(context)*0.045,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Text(contents[index].title, style: Theme.of(context).textTheme.headline1,),
        ],
      ),
      Text(
        contents[index].subTitle,
        style: Theme.of(context).textTheme.subtitle1,

      ),
    ],
  );
}