import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../auth/login_screen.dart';
part 'boarding_event.dart';
part 'boarding_state.dart';

class BoardingBloc extends Bloc<BoardingEvent, BoardingState> {
  int currentPage  =1 ;
  bool isLast = false;



  BoardingBloc() : super(BoardingInitial()) {
    on<ChanePageEvent>((event, emit) {
      currentPage = event.page;
      emit(ChangeBoardPageState(currentPage));
    });

    on(<NextPageEvent>(event, emit) {
      if (isLast) {
        submit(event.context);
      } else {
        event.controller!.nextPage(
            duration: const Duration(seconds: 1),
            curve: Curves.linear);
        isLast = true;
      }
    });


  }

  void submit(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (context) => const LoginScreen()),
            (route) => false);
  }
}
