import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,

            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 3,left: 7),
                      hintText: "What are you looking for?",
                      suffixIcon: Icon(Icons.search_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 700.0,
                width: 450.0,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(ImagesPath.BURGERMENU),
                      title: Text(
                        "Bacon Burger King",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 14,
                          ),
                          Text(
                            "4.5 (180 review)",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
