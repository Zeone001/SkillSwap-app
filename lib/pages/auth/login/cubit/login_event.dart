// lib/auth/auth_event.dart
abstract class LoginEvent {}

class LoginWithEmailAndPassword extends LoginEvent {
  final String email;
  final String password;

  LoginWithEmailAndPassword({required this.email, required this.password});
}

class LoginLoginWithGoogle extends LoginEvent {}
