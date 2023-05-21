import 'package:flutter/material.dart';

class smallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  double height;

  smallText({
    Key? key,
    this.color = Colors.black,
    required this.text,
    this.size = 14,
    this.height =1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.normal),
    );
  }
}
