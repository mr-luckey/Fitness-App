import 'package:flutter/material.dart';

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
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(title),
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
