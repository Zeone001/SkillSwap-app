import 'package:flutter/material.dart';
import 'package:skill_swap/const/app_colors.dart';

class AppBarApps extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarApps({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Notifikasi",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
      ),
      leadingWidth: 70,
      toolbarHeight: 70,
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.redCream),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.black,
              size: 29.0,
            ),
          ),
        ),
      ),
    );
  }
}
