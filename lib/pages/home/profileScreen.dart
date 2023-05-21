import 'package:flutter/material.dart';
import 'package:untitled2/widgets/app_icon.dart';
import 'package:untitled2/widgets/big_text.dart';
import 'package:untitled2/widgets/profileWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        title: bigText(
          text: "Profil",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: 700,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  color: Colors.yellow[200]),
              child: Icon(Icons.person, color: Colors.white, size: 100),
            ),
            SizedBox(height: 20,),
            
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.person,
                      backgroundColor: Colors.cyanAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "MUSTAFA TAZE",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.phone,
                      backgroundColor: Colors.purpleAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "05525378199",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.mail,
                      backgroundColor: Colors.orangeAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "admin@gmail.com",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.location_on,
                      backgroundColor: Colors.greenAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "Kayıtlı Adres",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.info,
                      backgroundColor: Colors.redAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "Hakkında",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                profileWidget(
                    AppIcon: app_icon(
                      icon: Icons.logout,
                      backgroundColor: Colors.redAccent,
                      iconColor: Colors.white,
                      iconSize: 25,
                      size: 40,
                    ),
                    BigText: bigText(text: "Çıkış",color: Colors.black,size: 25,)
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
