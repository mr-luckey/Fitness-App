import 'package:fitness_freel/Auth/Forget%20password/change_password.dart';
import 'package:fitness_freel/Auth/Signin/Sign_In.dart';
import 'package:fitness_freel/first_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Auth/Forget password/forget_pass.dart';
import 'Auth/Signin/email_screen.dart';
import 'Auth/Signin/name_screen.dart';
import 'Auth/Signin/password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/signin': (context) => SignIn(),
        '/forgetpass': (context) => ForgetPass(),
        '/name': (context) => NameScreen(),
        '/email': (context) => EmailScreen(),
        '/password': (context) => PasswordScreen(),
        '/resetpass': (context) => ChangePassword()
      },
    );
  }
}
