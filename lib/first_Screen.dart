import 'package:fitness_freel/Constants/Constants.dart';
import 'package:fitness_freel/Widgets/Button.dart';
import 'package:fitness_freel/Widgets/Input_Fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/images/bgimg.png',
            fit: BoxFit.cover,
            scale: 2,
          )),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      bgColor,
                      bgColor.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      bgColor.withOpacity(0.2),
                      bgColor,
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Image.asset(
                    'assets/Logos/22.png',
                    scale: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.41,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 70, left: 50, right: 70),
                      child: Column(
                        children: [
                          Text(
                            "Your total well-being \n       starts with us",
                            style: headingstyle,
                          ),
                          Text(
                            "There is no instant way to a healthy life",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontFamily: gymfont),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Button(
                        onPressed: () {
                          Get.toNamed('/signin');
                        },
                        title: "Get Started"),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 20, left: 90),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account?  ",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontFamily: gymfont),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white.withOpacity(1),
                                fontFamily: gymfont,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
