import 'package:flavorhub_food_app/product_details.dart';
import 'package:flutter/material.dart';
import 'helper/images_path.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bacon Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "yahoo comida",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                              size: 16,
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "150",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                TextSpan(
                                    text: " 40 % off",
                                    style: TextStyle(
                                        color: Color(0xffFE3D58),
                                        fontSize: 16)),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.save,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        height: 30.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "Qty: 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          ImagesPath.BURGERMENU,
                          width: 100,
                          height: 90,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              height: 110.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bacon Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "yahoo comida",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                              size: 16,
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "150",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                TextSpan(
                                    text: " 40 % off",
                                    style: TextStyle(
                                        color: Color(0xffFE3D58),
                                        fontSize: 16)),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.save,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        height: 30.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "Qty: 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          ImagesPath.BURGERMENU,
                          width: 100,
                          height: 90,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              height: 110.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.shade300,
                  )
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bacon Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "yahoo comida",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                              size: 16,
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "150",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                TextSpan(
                                    text: " 40 % off",
                                    style: TextStyle(
                                        color: Color(0xffFE3D58),
                                        fontSize: 16)),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.save,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                            Container(
                              height: 22.0,
                              width: 32.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 15,
                                      ))),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        height: 30.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "Qty: 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.0,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          ImagesPath.BURGERMENU,
                          width: 100,
                          height: 90,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Enter voucher code",
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
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
                      "Apply coupon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order total",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "450.00",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Text("Delivery Charges",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                SizedBox(
                  width: 153,
                ),
                Text("Free",
                    style: TextStyle(color: Colors.green, fontSize: 14)),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text("Total price",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                SizedBox(
                  width: 170,
                ),
                Icon(
                  Icons.currency_rupee,
                  color: Colors.black,
                  size: 16,
                ),
                Text("450.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 400.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xffFE3D58),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                    child: Text(
                  'Place order',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )),
              ),
            ),
            SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
