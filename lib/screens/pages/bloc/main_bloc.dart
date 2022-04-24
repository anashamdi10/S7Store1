import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../categories.dart';
import '../home.dart';
import '../more/more.dart';
import '../points.dart';
import '../shows.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

   int currentIndex = 0;
  final List<Widget> screens = [
    const MoreScreens(),
    const ShowScreen(),
    const PointsScreen(),
    const CategoriesScreen(),
    const HomeScreen(),
  ];

  var iconList = [
    Icons.more,
    Icons.settings_applications,
    Icons.electric_moped,
    Icons.category,
  ];


  MainBloc() : super(MainInitial()) {

    on<ChangeBottomNavEvent>(changeIndex);
  }

  changeIndex(ChangeBottomNavEvent event,Emitter emit){
    currentIndex = event.currentIndex;
    emit(ChangeBottomNavState(currentIndex));
  }

}
