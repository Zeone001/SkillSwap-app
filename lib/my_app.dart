import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/pages/auth/register/otp_page.dart';
import 'package:skill_swap/pages/auth/register/set_profile_page.dart';
import 'package:skill_swap/pages/chat/chat_page.dart';
import 'package:skill_swap/pages/chat/chat_room_page.dart';
import 'package:skill_swap/pages/detail/detail_page.dart';
import 'package:skill_swap/pages/exchange/exchange_list_page.dart';
import 'package:skill_swap/pages/notification/notification_page.dart';
import 'package:skill_swap/pages/profile/edit_profile_page.dart';
import 'package:skill_swap/utils/routes.dart';
import 'package:skill_swap/const/theme_app.dart';
import 'package:skill_swap/injector_container.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_cubit.dart';
import 'package:skill_swap/pages/auth/login/login_page.dart';
import 'package:skill_swap/pages/auth/register/register_page.dart';
import 'package:skill_swap/pages/home/home_page.dart';
import 'package:skill_swap/pages/onboarding/onboarding_page.dart';
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
              initialRoute: Routes.splash,
              theme: getAppTheme(context),
              routes: {
                Routes.splash: (_) => const SplashPage(),
                Routes.home: (_) => const HomePage(),
                Routes.onboarding: (_) => const OnboardingPage(),

                /// Auth
                Routes.login: (_) => const LoginPage(),
                Routes.register: (_) => const RegisterPage(),
              },
            )));
  }
}
