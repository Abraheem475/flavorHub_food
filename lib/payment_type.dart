import 'package:flavorhub_food_app/verify_address.dart';
import 'package:flutter/material.dart';
import 'helper/images_path.dart';
import 'home_menu.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeMenuScreen()));
        }, icon: Icon(Icons.arrow_back)),
        title: Text(
          "Payment",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          height: 180,
                          width: 290,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                ImagesPath.UBLATM,
                                fit: BoxFit.cover,
                              ))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 290,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImagesPath.ALLIEDBANKATM,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 290,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImagesPath.BANKISLAMIATM,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 180,
                        width: 290,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImagesPath.JAZZCASHATM,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              color: Colors.grey.shade300,
                              spreadRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Name On Card",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 400,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Mohammad Abraheem",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Accouont Number",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 400,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "xxxx-xxxx-xxxx-xxxx",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Expiration Date",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 47,
                              ),
                              Text(
                                "CVV",
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
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "02/30",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "130",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
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
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifyAddress()));
                  },
                  child: Container(
                    width: 400.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xffFE3D58),
                    ),
                    child: Center(
                        child: Text(
                      'Pay Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}
