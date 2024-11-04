import 'package:fitness_freel/Constants/Constants.dart';
import 'package:fitness_freel/Widgets/Button.dart';
import 'package:fitness_freel/Widgets/Input_Fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({super.key});
  TextEditingController Passwordcontroller = TextEditingController();

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
                      "Choose a password",
                      style: headingstyle.copyWith(fontSize: 24),
                    ),
                    Text(
                      "We take your health first over everything",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 13,
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
                          "Password",
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
                      // icon: null,
                      icon: Icons.lock,
                      ispass: true,
                      controller: Passwordcontroller,
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10, bottom: 5),
              //         child: Align(
              //           alignment: Alignment.centerLeft,
              //           child: Text(
              //             "Last name",
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.white,
              //               fontFamily: gymfont,
              //               fontSize: 10,
              //               // fontWeight: FontWeight.bold
              //             ),
              //           ),
              //         ),
              //       ),
              //       IconFields(
              //         // icon: Icons.lock_outline_rounded,
              //         ispass: false,
              //         controller: lastnamecontroller,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: Get.height * 0.3,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: Button(onPressed: () {}, title: "Continue"),
                ),
              ),
              SizedBox(
                height: Get.height * 0.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}