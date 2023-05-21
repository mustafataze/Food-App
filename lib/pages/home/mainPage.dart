import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/home/food_body.dart';
import 'package:untitled2/pages/home/shopping_cart.dart';
import 'package:untitled2/widgets/big_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(top: 35, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      child: GestureDetector(onTap:(){Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => shoopingCart()));},
                        child: Icon(Icons.shopping_cart_outlined, color: Colors.redAccent)),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: food_body(),
            )
          ),
          
          
          
          
        ],
      ),
    );
  }
}
