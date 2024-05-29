import 'package:flavorhub_food_app/product_details.dart';
import 'package:flutter/material.dart';

class PlaceOrderScreen extends StatefulWidget {
  const PlaceOrderScreen({super.key});

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsScreen()));
        }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("Address",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Row(
                children: [
                  Text("First name",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),),
                  SizedBox(width: 87,),
                  Text("Last name",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  SizedBox(
                    width: 135,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3,left: 7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        hintText: 'First name',
                      ),
                    ),
                  ),
                  SizedBox(width: 39,),
                  SizedBox(
                    width: 135,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3,left: 7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        hintText: 'Last name',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text("Address",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
              SizedBox(
                width: 310,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3,left: 7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(1),
                    ),
                    hintText: 'Enter address',
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Phone Number",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
              SizedBox(
                width: 310,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3,left: 7),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(1),
                    ),
                    hintText: 'Enter phone number',
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text("City",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),),
                  SizedBox(width: 140,),
                  Text("State",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  SizedBox(
                    width: 135,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3,left: 7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        hintText: 'City name',
                      ),
                    ),
                  ),
                  SizedBox(width: 39,),
                  SizedBox(
                    width: 135,
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3,left: 7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1),
                      ),
                        hintText: "State name",
                    ),
                  ),
                  ),]
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Order total",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
                Text("450.00",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
              ],),
             Row(children: [
               Text("Delivery Charges",style: TextStyle(color: Colors.grey,fontSize: 14)),
               SizedBox(width: 142,),
               Text("Free",style: TextStyle(color: Colors.green,fontSize: 14)),
             ],),
             SizedBox(height: 20,),
             Row(children: [
               Text("Total price",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
               SizedBox(width: 160,),
               Icon(Icons.currency_rupee,color: Colors.black,size: 16,),
               Text("450.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14)),
             ],),
              SizedBox(height: 20,),
              Container(
                width: 400,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xffFE3D58),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
