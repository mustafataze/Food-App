import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controllers/popularProductController.dart';
import 'package:untitled2/pages/food/menu_details.dart';

import 'package:untitled2/pages/home/food_body.dart';
import 'package:untitled2/pages/home/googleMaps.dart';
import 'package:untitled2/pages/home/home_page.dart';
import 'package:untitled2/pages/home/loginScreen.dart';
import 'package:untitled2/pages/home/mainPage.dart';
import 'package:untitled2/pages/home/paymentScreen.dart';
import 'package:untitled2/pages/home/profileScreen.dart';
import 'package:untitled2/pages/home/shopping_cart.dart';

import 'package:untitled2/pages/home/signUpPage.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<popularProductController>().getPopularProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginScreen(),
    );
  }
}
