import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import '../../constances/assets_manager.dart';

class OnBordingModel {
  String image ;
  String title;
  String subTitle ;

  OnBordingModel(this.image , this.title, this.subTitle);
}

List<OnBordingModel> contents = [
  OnBordingModel(ImageAssets.boarding1, "title".tr(), "subTitle".tr()),
  OnBordingModel(ImageAssets.boarding2, "title".tr(), "subTitle".tr()),
];