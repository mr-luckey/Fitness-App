import 'package:fitness_freel/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  final title;
  final Function() onPressed;

  Button({
    super.key,
    this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: btnbgcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: Get.height * 0.06,
        width: Get.width * 0.8,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: gymfont,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Redmain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final title;
  final Function() onPressed;
  final IconData icon;
  const IconButton(
      {super.key, this.title, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
