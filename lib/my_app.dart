import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skill_swap/const/routes.dart';
import 'package:skill_swap/injector_container.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_cubit.dart';
import 'package:skill_swap/pages/auth/login/login_page.dart';
import 'package:skill_swap/pages/auth/register/register_page.dart';
import 'package:skill_swap/pages/home/home_page.dart';
import 'package:skill_swap/pages/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
        // headerBuilder: () => const WaterDropHeader(),
        // footerBuilder: () => const ClassicFooter(),
        child: MultiBlocProvider(
            providers: [BlocProvider<LoginCubit>(create: (context) => sl())],
            child: MaterialApp(
              title: 'SkillSwap',
              initialRoute: Routes.login,
              theme: ThemeData(
                primaryColor: Colors.blueGrey,
                scaffoldBackgroundColor: Colors.white,
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.blueGrey,
                    shape: const StadiumBorder(),
                    maximumSize: const Size(double.infinity, 48),
                    minimumSize: const Size(double.infinity, 48),
                  ),
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  filled: true,
                  fillColor: Color(0xFFF1E6FF),
                  iconColor: Colors.blueGrey,
                  prefixIconColor: Colors.blueGrey,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              routes: {
                Routes.splash: (_) => const SplashPage(),
                Routes.home: (_) => const HomePage(),

                /// Auth
                Routes.login: (_) => const LoginPage(),
                Routes.register: (_) => const RegisterPage(),
              },
            )));
  }
}
