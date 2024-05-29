import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/logIn_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(ImagesPath.EASYPAYMNETLOGO,height: 250,width: 500,)),
          SizedBox(height: 20,),
          Text("Easy Payment",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text("in particular, the grabled words of \n"
              "         bear an mistakable"),
          SizedBox(height: size.height*.2,),
          InkWell(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          },
            child: Container(
              height: 50.0,
              width: 310.0,
              decoration: BoxDecoration(
                color: Color(0xffFE3D58),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
            ),
          ),

        ],
      ),
    );
  }
}
