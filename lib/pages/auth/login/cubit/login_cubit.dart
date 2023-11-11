// lib/auth/auth_cubit.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skill_swap/utils/routes.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_event.dart';
import 'package:skill_swap/pages/auth/login/cubit/login_state.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skill_swap/pages/home/home_page.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void loginWithGoogle(BuildContext context) async {
    emit(LoginLoading());

    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      print('ini google user $googleUser');
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Coba mendaftarkan pengguna dengan kredensial Google
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        final User? user = userCredential.user;
        if (user != null) {
          emit(LoginLoggedIn());
          print(
              "Registration and login with Google success"); // Pesan cetak "success"
          Navigator.pushNamed(context, Routes.home);
        } else {
          print("Gagal mendaftar dengan Google");
          emit(LoginError("Gagal mendaftar dengan Google"));
        }
      } else {
        print("Gagal Login dengan Google");
        emit(LoginError("Gagal login dengan Google"));
      }
    } catch (e) {
      print("Google Eror");
      emit(LoginError(e.toString()));
    }
  }

  void loginWithEmailAndPassword(BuildContext context, LoginEvent event) async {
    if (event is LoginWithEmailAndPassword) {
      emit(LoginLoading());
      try {
        // Lakukan login ke Firebase dengan email dan password di sini
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        // Cek apakah login berhasil
        final User? user = userCredential.user;
        if (user != null) {
          emit(LoginLoggedIn());
          print(
              "Login with email and password success"); // Pesan cetak "success"
          Navigator.pushNamed(context, Routes.home);
        } else {
          emit(LoginError("Gagal login dengan email dan password"));
        }
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    }
  }
}
