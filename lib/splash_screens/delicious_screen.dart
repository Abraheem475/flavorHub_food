import 'dart:async';

import 'package:flavorhub_food_app/fresh_food_screen.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FreshFoodScreen())); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFE3D58),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(ImagesPath.CHICKENLOGO,color: Colors.white,height: 170,width: 200,)),
          GestureDetector(
          onTap:(){
            Get.snackbar(
                "Account Created",
                "Thanks for your account", snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.white,colorText: Colors.black,margin: EdgeInsets.all(10.0));
            Get.bottomSheet(
                Container(
                  width: Get.width,
                  height: 300,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Text"),
              ),
            ),backgroundColor: Colors.white);

          },
          child: Text("Delicious Food",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
        ],
      ),
    );
  }
}
