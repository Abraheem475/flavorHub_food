import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/logIn_screen.dart';
import 'package:flavorhub_food_app/paymnet_screen.dart';
import 'package:flutter/material.dart';

class FreshFoodScreen extends StatefulWidget {
  const FreshFoodScreen({super.key});

  @override
  State<FreshFoodScreen> createState() => _FreshFoodScreenState();
}

class _FreshFoodScreenState extends State<FreshFoodScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            ImagesPath.LUNCHTIMELOGO,
            height: 300,
            width: 500,
          )),
          SizedBox(
            height: size.height * .07,
          ),
          Text(
            "Fresh Food",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          Text(
            "In Particular,the grabled words of \n "
            "         bear an mistakable",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(
            height: size.height * .09,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
            child: Container(
              height: 50.0,
              width: 310.0,
              decoration: BoxDecoration(
                color: Color(0xffFE3D58),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )),
        ],
      ),
    );
  }
}
