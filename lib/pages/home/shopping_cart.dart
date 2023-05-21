import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/pages/home/home_page.dart';
import 'package:untitled2/utils/food.dart';
import 'package:untitled2/widgets/app_icon.dart';
import 'package:untitled2/widgets/big_text.dart';
import 'package:untitled2/widgets/small_text.dart';

class shoopingCart extends StatelessWidget {
  const shoopingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 20,
              right: 20,
              top: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: app_icon(
                      icon: Icons.arrow_back_ios,
                      iconColor: Colors.white,
                      backgroundColor: Colors.cyanAccent,
                      iconSize: 35,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: app_icon(
                      icon: Icons.home_outlined,
                      iconColor: Colors.white,
                      backgroundColor: Colors.cyanAccent,
                      iconSize: 35,
                    ),
                  ),
                  app_icon(
                    icon: Icons.shopping_cart,
                    iconColor: Colors.white,
                    backgroundColor: Colors.cyanAccent,
                    iconSize: 35,
                  )
                ],
              )),
          Positioned(
              top: 80,
              right: 20,
              left: 20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: 15),
                //color: Colors.red,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (_, index) {
                        return Container(
                          width: double.maxFinite,
                          height: 80,
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(yemekfoto[index])),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    bigText(
                                      text: yemekad[index],
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        bigText(
                                          text: yemekFiyat[index],
                                          color: Colors.redAccent,
                                          size: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              left: 10,
                                              right: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              bigText(
                                                text: "1",
                                                color: Colors.black54,
                                                size: 22,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.black54,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        );
                      }),
                ),
              )),
        ],
      ),
    );
  }
}
