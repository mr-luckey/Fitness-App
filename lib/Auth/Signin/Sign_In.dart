import 'package:fitness_freel/Constants/Constants.dart';
import 'package:fitness_freel/Widgets/Button.dart';
import 'package:fitness_freel/Widgets/Input_Fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/1.png',
            fit: BoxFit.cover,
            scale: 2,
          )),
          Container(
            color: Colors.black.withOpacity(0.8),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 70, right: 70),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Image.asset(
                        'assets/Logos/22.png',
                        scale: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign In To Xpedite",
                      style: headingstyle,
                    ),
                    Text(
                      "Your fitness comes first with Xpedite",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontFamily: gymfont),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Adress",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: gymfont,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    IconFields(
                      icon: Icons.email_outlined,
                      ispass: false,
                      controller: emailcontroller,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: gymfont,
                            fontSize: 10,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    IconFields(
                      icon: Icons.lock_outline_rounded,
                      ispass: true,
                      controller: passwordcontroller,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Button(
                    onPressed: () {
                      Get.toNamed('/name');
                    },
                    title: "Sign In"),
              ),
              SizedBox(
                height: Get.height * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/Logos/apple.png',
                      scale: 1.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/Logos/facebook.png',
                      scale: 1.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/Logos/google.png',
                      scale: 1.2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?  ",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: gymfont),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontFamily: gymfont,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/forgetpass');
                    },
                    child: Text(
                      // UndoTextIntent:
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.7),
                          fontFamily: gymfont),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
