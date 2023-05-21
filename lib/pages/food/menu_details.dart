import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/pages/home/shopping_cart.dart';
import 'package:untitled2/widgets/app_column.dart';
import 'package:untitled2/widgets/app_icon.dart';

import '../../widgets/big_text.dart';
import '../../widgets/iconAndTextWidget.dart';
import '../../widgets/small_text.dart';

class menu_detail extends StatefulWidget {
  final String isim;
  final String zaman;
  final String yorum;
  final String icindekiler;
  final String fiyat;
  final String resim;
  const menu_detail(
      {Key? key,
      required this.fiyat,
      required this.icindekiler,
      required this.isim,
      required this.yorum,
      required this.resim,
      required this.zaman})
      : super(key: key);

  @override
  State<menu_detail> createState() => _menu_detailState();
}

class _menu_detailState extends State<menu_detail> {
  int sayi=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.resim)),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 10,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                      size: 35,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => shoopingCart()));
                    },
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.red,
                      size: 35,
                    ))
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: 310,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  app_column(
                    text: widget.isim,
                    zaman: widget.zaman,
                    yorum: widget.yorum,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  bigText(
                    text: "İçindekiler",
                    color: Colors.red,
                    size: 18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                      child: smallText(
                    text: widget.icindekiler,
                    height: 1.8,
                    size: 15,
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      sayi--;
                    },
                    child: Icon(
                      Icons.remove,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  bigText(
                    text: sayi.toString(),
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      sayi++;
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: "Sepete Eklendi");
              },
              child: Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                child: bigText(
                  text: widget.fiyat + "|Sepete Ekle",
                  size: 20,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyanAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
