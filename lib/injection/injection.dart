
import 'package:get_it/get_it.dart';
import 'package:s7_store/screens/pages/bloc/main_bloc.dart';
import 'package:s7_store/screens/pages/more/bloc/more_bloc.dart';

import '../screens/on_boaeding/bloc/boarding_bloc.dart';

final  inject = GetIt.instance;

void setUp(){
  inject.registerLazySingleton(() => BoardingBloc());
  inject.registerLazySingleton(() => MainBloc());
  inject.registerLazySingleton(() => MoreBloc());
}