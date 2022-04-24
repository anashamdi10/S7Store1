import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s7_store/constances/theme_manager.dart';
import 'package:s7_store/screens/on_boaeding/bloc/boarding_bloc.dart';
import 'package:s7_store/screens/pages/bloc/main_bloc.dart';
import 'package:s7_store/screens/pages/more/bloc/more_bloc.dart';
import 'package:s7_store/screens/splash/splash_screen.dart';
import 'injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setUp();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('ar') , Locale("en")],
      path: "assets/translations",// <-- change the path of the translation files
      child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BoardingBloc>(create: (context) => inject.get<BoardingBloc>()),
        BlocProvider<MainBloc>(create: (context) => inject.get<MainBloc>()),
        BlocProvider<MoreBloc>(create: (context)=> inject.get<MoreBloc>())
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        home: const SplashScreen(),
      ),
    );
  }
}
