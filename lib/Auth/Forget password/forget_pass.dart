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
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 280,
                      // left: 50,
                    ),
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
                          height: 120,
                        ),
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
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 5),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Email Address",
                                      style: TextStyle(
                                          color:
                                              Colors.white.withOpacity(0.7)))),
                            ),
                            IconFields(
                                icon: Icons.email_outlined,
                                controller: emailcontroller,
                                ispass: false),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Button(
                                onPressed: () {
                                  Get.toNamed('/resetpass');
                                },
                                title: "Send OTP"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
