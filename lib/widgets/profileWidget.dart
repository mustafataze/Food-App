import 'package:flutter/material.dart';
import 'package:untitled2/widgets/app_icon.dart';
import 'package:untitled2/widgets/big_text.dart';

class profileWidget extends StatelessWidget {
  bigText BigText;
  app_icon AppIcon;
  profileWidget({Key? key, required this.AppIcon,required this.BigText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          AppIcon,
          SizedBox(width: 20,),
          BigText,
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0,5),
            color: Colors.grey.withOpacity(0.2),
          )
        ]
      ),
    );
  }
}
