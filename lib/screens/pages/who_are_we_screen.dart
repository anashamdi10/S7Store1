import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/pages/widget/app_bar.dart';

class WhoWeAreScreen extends StatelessWidget {
  const WhoWeAreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      appBar: appBar1(),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("who_we".tr(), style: Theme.of(context).textTheme.bodyText2,),
            SizedBox(height: height(context)*0.05,),
            const Text("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق"
            ),
            const Text("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق"
            ),
            const Text("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق"
            )

          ],
        ),
      ),

    );
  }
}
