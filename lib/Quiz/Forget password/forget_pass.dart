import 'package:fitness_freel/Widgets/Button.dart';
import 'package:fitness_freel/Widgets/Input_Fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Constants.dart';

// ignore: must_be_immutable
class ForgetPass extends StatelessWidget {
  ForgetPass({super.key});
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 50,
              ),
              child: Column(
                children: [
                  Text(
                    "Forget Password?",
                    style: headingstyle,
                  ),
                  Text(
                    "Dont worry! it happens. Please enter your email",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontFamily: gymfont),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(
                      'assets/Logos/22.png',
                      scale: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.08),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Email Address",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7)))),
                      ),
                      IconFields(
                          icon: Icons.email_outlined,
                          controller: emailcontroller,
                          ispass: false),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.4,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Button(onPressed: () {}, title: "Send OTP"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
