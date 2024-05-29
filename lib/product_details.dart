import 'package:flavorhub_food_app/address_place_order.dart';
import 'package:flavorhub_food_app/check_out_screen.dart';
import 'package:flavorhub_food_app/filter.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/menu_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 290,
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  child: Image.asset(
                    ImagesPath.BURGERKING,
                    height: size.height * 0.41,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 15,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuItemScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        )),
                    Text(
                      "Product detail",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOutScreen()));
                        },
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterScreen()));
                        },
                        icon: Icon(
                          Icons.filter_list_alt,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 240,
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.grey.shade300)
                      ]),
                  child: Image.asset(
                    ImagesPath.HEARTLOGO,
                    color: Color(0xffFE3D58),
                    height: 30,
                    width: 50,
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bacon burger king ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 12,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "2.8 Km away",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ])),
                    SizedBox(
                      width: 160,
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xffFE3D58),
                      size: 16,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "150.00",
                          style: TextStyle(
                              color: Color(0xffFE3D58),
                              fontWeight: FontWeight.w400,
                              fontSize: 18)),
                    ]))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Free shipping",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "4.5 rating",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      "Given your rating",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffFE3D58),
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Detail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "There are many variations of passages of Lorem \nIpsum available, but the majority have suffered in \nsome from, by injected humour,or ramdomised  \nwords which 'don't' look use ...",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Total price",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      TextSpan(
                          text: "   150.00",
                          style: TextStyle(
                              color: Color(0xffFE3D58),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: Color(0xffFE3D58),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlaceOrderScreen()));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xffFE3D58),
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "Place order",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
