import 'package:fitness_freel/Quiz/Signin/Sign_In.dart';
import 'package:fitness_freel/first_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Quiz/Forget password/forget_pass.dart';
import 'Quiz/Signin/name_screen.dart';

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
      },
    );
  }
}
