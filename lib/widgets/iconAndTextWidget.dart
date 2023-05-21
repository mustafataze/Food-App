import 'package:flutter/cupertino.dart';
import 'package:untitled2/widgets/big_text.dart';


class iconAndTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;

  const iconAndTextWidget({
    Key? key,
    required this.iconColor,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 6,
        ),
        bigText(
          text: text,
        ),
      ],
    );
  }
}
