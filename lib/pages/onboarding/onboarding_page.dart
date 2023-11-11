import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';
import 'package:skill_swap/utils/routes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/ic_onboarding.png",
                      width: AppSize(context) / 2,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Selamat Datang di SkillSwap!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppSize(context) / 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Berkembanglah bersama dalam pertukaran keterampilan.Berkembanglah bersama dalam pertukaran keterampilan.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppSize(context) / 30,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      width: 201,
                      child: Hero(
                        tag: "onboarding_btn",
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              Routes.login,
                            );
                          },
                          style: const ButtonStyle(
                              // fixedSize:
                              //     MaterialStatePropertyAll(Size(201, 59)),
                              // maximumSize: MaterialStatePropertyAll(
                              //     Size(double.infinity, 59)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(1200.0),
                            ),
                          ))),
                          child: Text(
                            "mulai".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
