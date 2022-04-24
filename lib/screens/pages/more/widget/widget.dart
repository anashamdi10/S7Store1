import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/injection/injection.dart';
import 'package:s7_store/screens/pages/more/bloc/more_bloc.dart';

import '../../../../constances/color_manger.dart';
import '../../../../constances/constants.dart';

Widget itemBuilder(
        {required BuildContext context,
        required String text,
        required Image image,
        required VoidCallback function}) =>
    Container(
      padding: EdgeInsets.all(AppSize.s8),
        height: height(context) * 0.05,
        width: width(context) * 0.89,
        decoration: BoxDecoration(
          color: ColorManger.darkblue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: function,
          child: Row(
            children: [
              image,
              SizedBox(
                width: width(context) * 0.02,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward,
                color: ColorManger.white,
              ),
            ],
          ),
        ));

Widget dialog(BuildContext context) => BlocBuilder<MoreBloc, MoreState>(
      builder: (context, state) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: height(context) * 0.12,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              ColorManger.darkBlue,
              ColorManger.purple,
              ColorManger.pink,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              children: [
                SizedBox(
                  height: height(context) * 0.01,
                ),
                Text(
                  "Select language",
                  style: TextStyle(color: ColorManger.white),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          inject.get<MoreBloc>().add(EnglishLanguageEvent(context));

                        },
                        child: Text(
                          "English",
                          style: TextStyle(color: ColorManger.white),
                        )),
                    SizedBox(
                      width: width(context) * 0.1,
                    ),
                    InkWell(
                      onTap: () {
                        inject.get<MoreBloc>().add(ArabicLanguageEvent(context));
                      },
                      child: Text(
                        "Arabic",
                        style: TextStyle(color: ColorManger.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
