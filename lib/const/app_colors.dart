import 'package:flutter/material.dart';

class AppColors {
  static const Map<int, Color> color = {
    50: Color.fromRGBO(27, 26, 29, .1),
    100: Color.fromRGBO(27, 26, 29, .2),
    200: Color.fromRGBO(27, 26, 29, .3),
    300: Color.fromRGBO(27, 26, 29, .4),
    400: Color.fromRGBO(27, 26, 29, .5),
    500: Color.fromRGBO(27, 26, 29, .6),
    600: Color.fromRGBO(27, 26, 29, .7),
    700: Color.fromRGBO(27, 26, 29, .8),
    800: Color.fromRGBO(27, 26, 29, .9),
    900: Color.fromRGBO(27, 26, 29, 1),
  };

  static const MaterialColor theme = MaterialColor(0xff1B1A1D, color);
  static const Color primary = Color(0xff1B1A1D);
  // static const Color primaryDark = Color(0xff342C2A);
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color redCream = Color(0xffC9ADAD);
  static const Color grey = Color(0xff3D4648);
  static const Color white = Colors.white;
  static const Color blue = Color(0xff0070DA);
  static const Color purple = Color(0xff892CDC);
}

AppSize(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
