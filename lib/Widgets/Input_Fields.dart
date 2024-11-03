import 'package:flutter/material.dart';

// ignore: must_be_immutable
class simple extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  simple({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class IconFields extends StatefulWidget {
  IconData? icon;
  final bool ispass;
  TextEditingController controller = TextEditingController();
  IconFields(
      {super.key, this.icon, required this.controller, required this.ispass});

  @override
  State<IconFields> createState() => _IconFieldsState();
}

class _IconFieldsState extends State<IconFields> {
  bool? ispassword;

  @override
  void initState() {
    super.initState();
    ispassword = false;
  }

  @override
  Widget build(BuildContext context) {
    return widget.ispass
        ? TextField(
            // keyboardType: TextInputType.text,
            controller: widget.controller,
            obscureText: ispassword!,
            decoration: InputDecoration(
              filled: true,
              // fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon:
                  widget.icon != null ? Icon(widget.icon) : SizedBox.shrink(),
              suffixIcon: IconButton(
                icon: Icon(
                  ispassword! ? Icons.visibility_off : Icons.visibility,
                  // color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    ispassword = !ispassword!;
                  });
                },
              ),
            ),
          )
        : TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.email),
            ),
          );
  }
}
