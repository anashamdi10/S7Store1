import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'more_event.dart';
part 'more_state.dart';

class MoreBloc extends Bloc<MoreEvent, MoreState> {
  MoreBloc() : super(MoreInitial()) {
    on<ArabicLanguageEvent>((event, emit) {
      print("ar");
      event.context.setLocale(const Locale('ar'));
    });
    on<EnglishLanguageEvent>((event, emit) {
      print("en");
      event.context.setLocale(const Locale('en'));
    });

  }
}
