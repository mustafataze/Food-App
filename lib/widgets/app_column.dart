import 'package:flutter/material.dart';

import 'big_text.dart';
import 'iconAndTextWidget.dart';

class app_column extends StatelessWidget {
  final String text;
  final String zaman;
  final String yorum;
  const app_column({Key? key, required this.text, required this.zaman,required this.yorum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      bigText(
        text: text,
        size: 20,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconAndTextWidget(
              iconColor: Colors.greenAccent,
              text: zaman,
              icon: Icons.access_time_filled_rounded),
          iconAndTextWidget(
              iconColor: Colors.amber, text: yorum, icon: Icons.comment),
        ],
      )
    ]);
  }
}
