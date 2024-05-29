import 'package:flavorhub_food_app/payment_type.dart';
import 'package:flutter/material.dart';

class VerifyAddress extends StatefulWidget {
  const VerifyAddress({super.key});

  @override
  State<VerifyAddress> createState() => _VerifyAddressState();
}

class _VerifyAddressState extends State<VerifyAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentMethods()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Verify Address",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 350,
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
                      height: 25,
                    ),
                    Center(
                        child: Text(
                      "Payable Amount",
                      style: TextStyle(fontSize: 18),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 18,
                        ),
                        Text(
                          "450.00",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      width: 300,
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
                              height: 4,
                            ),
                            Text(
                              "Delivery Address",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Allied Mor, near CTM, Sargogha \nRoad Fasialbad",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 35),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      width: 300,
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
                              height: 4,
                            ),
                            Text(
                              "Contact Number",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "03123456789",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 35),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            InkWell(
              onTap: () {},
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
          ],
        ),
      ),
    );
  }
}
