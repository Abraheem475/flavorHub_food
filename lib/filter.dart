import 'package:flavorhub_food_app/product_details.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(1000, 2000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Filter',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 23,
            ),
            Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "All",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Breakfast",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Lunch",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Dinner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Burger",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffFE3D58),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Italian food",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Lunch",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Chinese food",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Pizza",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Salad food",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Cheese",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Type of food",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Any",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Vegetarian",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Vegan food",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
                Container(
                  height: 35,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(
                      child: Text(
                    "Lacto ovo",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Price range",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Row(
              children: [
                Expanded(
                  child: RangeSlider(
                    values: _currentRangeValues,
                    max: 2000,
                    divisions: 100,
                    activeColor: Color(0xffFE3D58),
                    inactiveColor: Colors.grey.shade200,
                    labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString()),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        color: Colors.black,
                        size: 15,
                      ),
                      Text(
                        "1000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        color: Colors.black,
                        size: 15,
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50.0,
              width: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xffFE3D58),
              ),
              child: Center(
                  child: Text(
                "Apply filters",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 30.0,
              width: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
              ),
              child: Center(
                  child: Text(
                "Clear filter",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
