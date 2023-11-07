import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:skill_swap/firebase_option.dart';
import 'package:skill_swap/injector_container.dart';
import 'package:skill_swap/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  try {
    await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform)
        .then((value) {
      print("Success initializing Firebase");
    });
  } catch (e) {
    print("Error initializing Firebase: $e");
  }

  setupDependencies();

  runApp(const MyApp());
}
