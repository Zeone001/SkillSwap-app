import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skill_swap/const/app_colors.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        maximumSize: const Size(double.infinity, 55),
        minimumSize: const Size(double.infinity, 55),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      iconColor: AppColors.primary,
      prefixIconColor: AppColors.primary,
      suffixIconColor: AppColors.primary,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 17.0),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.00)),
        borderSide: BorderSide(
          color: AppColors.red,
          width: 2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.00)),
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.00)),
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.00)),
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.00)),
        borderSide: BorderSide(
          color: AppColors.red,
          width: 2,
        ),
      ),
    ),
  );
}
