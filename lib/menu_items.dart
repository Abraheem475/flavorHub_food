import 'package:flavorhub_food_app/home_menu.dart';
import 'package:flavorhub_food_app/product_details.dart';
import 'package:flutter/material.dart';

import 'helper/images_path.dart';

class MenuItemScreen extends StatefulWidget {
  const MenuItemScreen({super.key});

  @override
  State<MenuItemScreen> createState() => _MenuItemScreenState();
}

class _MenuItemScreenState extends State<MenuItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeMenuScreen()));
        }, icon: Icon(Icons.arrow_back_outlined,
          color: Colors.black,)),
        title: Text(
          "Menu items",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3,left: 7),
                    hintText: "What are you looking for?",
                    suffixIcon: Icon(Icons.search_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              child: SizedBox(
                  height: 600,
                  width: 500,
                  child: GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailsScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.symmetric(
                                horizontal: BorderSide.none,
                                vertical: BorderSide.none),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: .3,
                                blurRadius: 1,
                                color: Colors.grey.shade300,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      ImagesPath.BURGERMENU,
                                      width: 170,
                                      height: 90,
                                    )),
                                Text(
                                  "Bacon Burger",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "yahoo comida",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                      size: 10,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "150",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12)),
                                        TextSpan(
                                            text: " 40 % off",
                                            style: TextStyle(
                                                color: Color(0xffFE3D58),
                                                fontSize: 12)),
                                      ],
                                    )),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFE3D58),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            "ADD",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}