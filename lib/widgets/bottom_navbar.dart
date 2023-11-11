import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';

class BottomNavigationBarApps extends StatefulWidget {
  @override
  _BottomNavigationBarAppsState createState() =>
      _BottomNavigationBarAppsState();
}

class _BottomNavigationBarAppsState extends State<BottomNavigationBarApps> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.width / 7,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 20.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: InkWell(
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/ic_home.png",
                      ),
                      size: AppSize(context) / 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    // color: AppColors.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: InkWell(
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/ic_change.png",
                      ),
                      size: AppSize(context) / 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    // color: AppColors.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: InkWell(
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/ic_chat.png",
                      ),
                      size: AppSize(context) / 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
