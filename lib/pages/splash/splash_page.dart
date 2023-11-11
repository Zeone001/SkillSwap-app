import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/pages/onboarding/onboarding_page.dart';
import 'package:skill_swap/utils/routes.dart';
import 'package:hive/hive.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key});

  @override
  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)!.settings.name;
    print('Current route: $currentRoute');

    return Builder(builder: (context) {
      Future<bool> loading() async {
        await Future.delayed(const Duration(seconds: 3));

        // Mengecek nilai isFirstOpenApp dari Hive
        final Box<bool> box = await Hive.openBox<bool>('app_settings');
        bool? isFirstOpenApp = box.get('isFirstOpenApp', defaultValue: true);

        print('Ini Pertama Kali? ${isFirstOpenApp}');

        if (!isFirstOpenApp!) {
          // Jika isFirstOpenApp true, arahkan ke OnboardingPage
          Navigator.pushNamed(
            context,
            Routes.onboarding,
          );
        } else {
          // Jika isFirstOpenApp false, arahkan ke Routes.login
          Navigator.pushNamed(
            context,
            Routes.login,
          );
        }

        return true;
      }

      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SkillSwap',
                style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 30.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              FutureBuilder(
                future: loading(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  // Jika ingin menampilkan indikator loading, uncomment baris berikut
                  // if (snapshot.connectionState == ConnectionState.waiting) {
                  //   return CircularProgressIndicator();
                  // }
                  return Container();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
