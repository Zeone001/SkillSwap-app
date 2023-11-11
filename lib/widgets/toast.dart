import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts {
  static void _toast(
    String message, {
    position = ToastGravity.BOTTOM,
    required Color backgroundColor,
    textColor = Colors.black,
  }) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: backgroundColor,
        gravity: position,
        textColor: textColor);
  }

  static void successToast(String message, {toastLength}) {
    _toast(
      message,
      backgroundColor: Colors.teal.withOpacity(0.9),
      textColor: Colors.white,
    );
  }

  static void errorToast(String message, {toastLength}) {
    _toast(
      message,
      backgroundColor: Colors.red.withOpacity(0.9),
      textColor: Colors.white,
    );
  }

  static void warningToast(String message, {length}) {
    _toast(message,
        backgroundColor: Colors.amber.withOpacity(0.9),
        textColor: Colors.white);
  }

  static void infoToast(String message) {
    _toast(
      message,
      backgroundColor: Colors.grey[350]!,
      textColor: Colors.black,
    );
  }
}
