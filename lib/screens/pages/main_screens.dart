import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s7_store/constances/color_manger.dart';
import 'package:s7_store/screens/pages/bloc/main_bloc.dart';
import '../../injection/injection.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
        listener: (context, state) {
          if (state is ChangeBottomNavState) {
            print('success');
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: inject
                .get<MainBloc>()
                .screens[inject
                .get<MainBloc>()
                .currentIndex],
            backgroundColor: ColorManger.primary,
            floatingActionButton: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  gradient:
                  inject.get<MainBloc>().currentIndex ==4 ?
                  LinearGradient(
                      colors: [
                        ColorManger.darkBlue,
                        ColorManger.purple,
                        ColorManger.pink
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter):LinearGradient(colors: [ColorManger.darkBlue2 , ColorManger.darkBlue2])
              ),
              child: FloatingActionButton(
                backgroundColor: ColorManger.transparent,
                onPressed: () {
                  inject.get<MainBloc>().add(ChangeBottomNavEvent(4));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: ColorManger.white,
                    ),
                    Text(
                      "الرئيسية",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline5,
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                return
                  state is ChangeBottomNavState ?
                  AnimatedBottomNavigationBar(
                    onTap: (index) {
                      inject.get<MainBloc>().add(ChangeBottomNavEvent(index));
                    },
                    backgroundColor: ColorManger.darkblue,
                    inactiveColor: ColorManger.white,
                    activeColor: ColorManger.pinkPurple,
                    gapLocation: GapLocation.center,
                    notchSmoothness: NotchSmoothness.verySmoothEdge,
                    icons: inject
                        .get<MainBloc>()
                        .iconList,
                    activeIndex: state.currentIndex,
                  )
                      : AnimatedBottomNavigationBar(
                    onTap: (index) {
                      inject.get<MainBloc>().add(ChangeBottomNavEvent(index));
                    },
                    backgroundColor: ColorManger.darkblue,
                    inactiveColor: ColorManger.white,
                    activeColor: ColorManger.pinkPurple,
                    gapLocation: GapLocation.center,
                    notchSmoothness: NotchSmoothness.verySmoothEdge,
                    icons: inject
                        .get<MainBloc>()
                        .iconList,
                    activeIndex: inject
                        .get<MainBloc>()
                        .currentIndex,
                  );
              },
            ),
          );
        });
  }
}
