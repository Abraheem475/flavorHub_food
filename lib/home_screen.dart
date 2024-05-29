import 'package:flavorhub_food_app/favorite_items.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/navBar_drawer.dart';
import 'package:flavorhub_food_app/payment_type.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer:
      NavBar(),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffFE3D58),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteItemsScreen()));
          }, icon: Icon(Icons.favorite_border,
            color: Colors.white,)),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethods()));
            }, icon: Icon( Icons.shopping_cart_outlined,
              color: Colors.white,))
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 150,
                        width: 290,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImagesPath.BURGERBANNER1,
                              fit: BoxFit.cover,
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 290,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            ImagesPath.BURGERBANNER2,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 290,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            ImagesPath.BURGERBANNER3,
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150,
                      width: 290,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            ImagesPath.BURGERBANNER4,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3,left: 7),
                      hintText: "Search Products...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(
                  "All Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              ImagesPath.PIZZALOGO,
                              fit: BoxFit.cover,
                              height: 65,
                              width: 80,
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              ImagesPath.BURGERLOGO,
                              fit: BoxFit.cover,
                              height: 65,
                              width: 60,
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              ImagesPath.BREAKFASTLOGO,
                              fit: BoxFit.cover,
                              height: 65,
                              width: 70,
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Breakfast",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              ImagesPath.SWEETLOGO,
                              fit: BoxFit.cover,
                              height: 65,
                              width: 60,
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Sweets",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image.asset(
                              ImagesPath.FRUITLOGO,
                              fit: BoxFit.cover,
                              height: 65,
                              width: 65,
                            )),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Fruits",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(
                  "Most Popular",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                  height: 400,
                  width: 500,
                  child: GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Container(
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
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
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
                                        borderRadius: BorderRadius.circular(4.0),
                                      ),
                                      child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Text("ADD", style: TextStyle(color: Colors.white,fontSize: 10),),
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
