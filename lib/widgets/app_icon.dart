import 'package:flutter/material.dart';

class app_icon extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double size;
  final double iconSize;

  const app_icon(
      {Key? key,
      required this.icon,
      this.iconSize=16,
      this.backgroundColor = Colors.cyan,
      this.iconColor = Colors.purple,
      this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
        
      ),
    );
  }
}
