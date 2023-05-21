import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controllers/popularProductController.dart';
import 'package:untitled2/data/data/repository/popular_product_repo.dart';
import 'package:untitled2/model/products_model.dart';
import 'package:untitled2/pages/food/menu_details.dart';
import 'package:untitled2/utils/food.dart';
import 'package:untitled2/widgets/app_column.dart';
import 'package:untitled2/widgets/big_text.dart';
import 'package:untitled2/widgets/iconAndTextWidget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled2/utils/app_constants.dart';

class food_body extends StatefulWidget {
  const food_body({Key? key}) : super(key: key);

  @override
  State<food_body> createState() => _food_bodyState();
}

class _food_bodyState extends State<food_body> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currPageValue = 0.0;
  double scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider
        GetBuilder<popularProductController>(builder: (popularProducts) {
          return Container(
            //color: Colors.red,

            height: 320,
            child: PageView.builder(
                controller: pageController,
                itemCount: popularProducts.popularProductList.length,
                itemBuilder: (context, position) {
                  return _buildPageItem(
                      position, popularProducts.popularProductList[position]);
                }),
          );
        }),

        //dots
        GetBuilder<popularProductController>(builder: (popularProducts) {
          return DotsIndicator(
              dotsCount: popularProducts.popularProductList.isEmpty
                  ? 1
                  : popularProducts.popularProductList.length,
              position: currPageValue,
              decorator: DotsDecorator(
                activeColor: Colors.grey,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ));
        }),

        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              bigText(
                text: "Menüler",
                color: Colors.black,
                size: 17,
              )
            ],
          ),
        ),

        Container(
          height: 900,
          child: ListView.builder(
              //shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menu_detail(
                          resim: menufoto[index],
                          fiyat: menuFiyat[index],
                          icindekiler:menuicindekiler[index],
                          isim: menuad[index],
                          yorum: menuYorum[index],
                          zaman: menuZaman[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    //color: Colors.amber,
                    margin: EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          //color: Colors.amber,

                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red[100],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(menufoto[index])),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Colors.yellow[50],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  bigText(
                                    text: menuad[index],
                                    size: 20,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      iconAndTextWidget(
                                          iconColor: Colors.greenAccent,
                                          text: menuZaman[index],
                                          icon:
                                              Icons.access_time_filled_rounded),
                                      iconAndTextWidget(
                                          iconColor: Colors.amber,
                                          text: menuYorum[index],
                                          icon: Icons.comment),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index, ProductModel popularProduct) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == currPageValue.floor()) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == currPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currPageValue - index + 1) * (1 - scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          InkWell(onTap: (){
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menu_detail(
                          resim: yemekfoto[index],
                          fiyat: yemekFiyat[index],
                          icindekiler:yemekicindekiler[index],
                          isim: yemekad[index],
                          yorum: yemekYorum[index],
                          zaman: yemekZaman[index],
                        ),
                      ),
                    );
            
          },
            child: Container(
              height: 200,
              margin: EdgeInsets.only(left: 11, right: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: index.isEven ? Colors.lightBlue[100] : Colors.purple[100],
                image: DecorationImage(image: AssetImage(yemekfoto[index])),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 110,
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.yellow[50],
              ),
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        bigText(
                          text: yemekad[index],
                          size: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(Icons.star,
                                      color: Colors.amber, size: 15)),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            iconAndTextWidget(
                                iconColor: Colors.greenAccent,
                                text: yemekZaman[index],
                                icon: Icons.access_time_filled_rounded),
                            iconAndTextWidget(
                              iconColor: Colors.amber,
                              text: yemekYorum[index],
                              icon: Icons.comment,
                            )
                          ],
                        )
                      ])),
            ),
          ),
        ],
      ),
    );
  }
}
