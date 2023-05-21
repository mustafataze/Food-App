import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow overflow;

  bigText({
    Key? key,
    this.color = Colors.cyan,
    required this.text,
    this.size = 16,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w300),
    );
  }
}
