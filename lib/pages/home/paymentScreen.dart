import 'package:flutter/material.dart';
import 'package:untitled2/pages/home/home_page.dart';
import 'package:untitled2/pages/home/shopping_cart.dart';
import 'package:untitled2/utils/helper.dart';

import '../../widgets/big_text.dart';

class paymentScreen extends StatelessWidget {
  const paymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.cyan,
                        ),
                      ),
                      Expanded(
                          child: bigText(
                              text: "Ödeme Sayfası",
                              size: 30,
                              color: Colors.black87)),
                      GestureDetector(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => shoopingCart()));
                      },
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      bigText(
                        text: "Lütfen ödeme yöntemi seçin",
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.cyan,
                    thickness: 1.5,
                    height: 30,
                  ),
                ),
                Container(
                  height: 150,
                  width: 400,
                  decoration:
                      BoxDecoration(color: Colors.grey[300], boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 20),
                      blurRadius: 20,
                      spreadRadius: 10,
                    )
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Peşin veya Kart ile ödeme",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.orange,
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.cyan,
                          thickness: 1,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Image.asset('assets/image/visa.png'),
                            ),
                            Text("**** ****"),
                            Text("7589"),
                            OutlinedButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.orange),
                                    ),
                                    shape: MaterialStateProperty.all(
                                        StadiumBorder())),
                                onPressed: () {},
                                child: Text(
                                  "Kartı Sil",
                                  style: TextStyle(color: Colors.red),
                                ))
                          ],
                        ),
                        Divider(
                          color: Colors.cyan,
                          thickness: 1,
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Diğer Ödeme Yöntemleri",
                              style: TextStyle(color: Colors.grey[700]),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.red)),
                              shape: MaterialStateProperty.all(
                                        StadiumBorder())
                              ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Farklı Bir Kart Ekleyin")
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
