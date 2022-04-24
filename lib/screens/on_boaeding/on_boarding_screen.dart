import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s7_store/constances/assets_manager.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/constances/constants.dart';
import 'package:s7_store/constances/valus_manger.dart';
import 'package:s7_store/screens/on_boaeding/widgets/item_builder.dart';
import '../../injection/injection.dart';
import '../../models/on_boarding/on_boarding_model.dart';
import 'bloc/boarding_bloc.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BoardingBloc, BoardingState>(
  listener: (context, state) {
    if(state is ChangeBoardPageState){
     print("true");
    }
  },
  builder: (context, state) {
    return  Scaffold(
          backgroundColor: ColorManger.primary,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width(context) * 0.06),
              child: Column(
                children: [
                  SizedBox(
                    height: height(context) * 0.1,
                  ),
                  SizedBox(
                    height: height(context) * 0.65,
                    child: PageView.builder(
                        controller: controller,
                        physics: const BouncingScrollPhysics(),
                        itemCount: contents.length,
                        onPageChanged: (value) {
                         //inject.get<BoardingBloc>().add(ChanePageEvent(value));
                        },

                        itemBuilder: (context, index) =>
                            itemBuilder(index, contents, context)),
                  ),
                  SizedBox(
                    height: height(context) * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                            contents.length, (index) =>
                            _buildDotes(index: index)),
                      ),
                      FloatingActionButton(
                          child: Container(
                            height: height(context) * 0.1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      ColorManger.darkBlue,
                                      ColorManger.purple,
                                      ColorManger.pink,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                shape: BoxShape.circle),
                            child: const Image(
                              image: AssetImage(ImageAssets.arrow),
                            ),
                          ),
                          onPressed: () {
                            inject.get<BoardingBloc>().add(NextPageEvent(controller,context));
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  AnimatedContainer _buildDotes({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: AppSize.s4),
      height: height(context) * 0.005,
      width:  inject.get<BoardingBloc>().currentPage == index ? 19 : 32,
      decoration: BoxDecoration(
          gradient: inject.get<BoardingBloc>().currentPage == index ?
          LinearGradient(
              colors: [
                ColorManger.white,
                ColorManger.white,
              ]
          ) : LinearGradient(colors: [
            ColorManger.darkBlue,
            ColorManger.purple,
            ColorManger.pink,
          ])
      ),
    );
  }
}
