import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/profile_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var name;
  var email;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(name.toString()),
            accountEmail: Text(email.toString()),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset(ImagesPath.ACCOUNTAVTAR)),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFE3D58),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.help_outline_outlined,
              color: Color(0xffFE3D58),
            ),
            title: Text(
              "Help Center",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.business,
              color: Color(0xffFE3D58),
            ),
            title: Text(
              "food for business",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.card_giftcard_outlined,
              color: Color(0xffFE3D58),
            ),
            title: Text(
              "Invite friend",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Text("Setting", style: TextStyle(color: Colors.grey)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: ListTile(
              title: Text(
                "Update Profile",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Terms & Condition",
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }

  getData() {
    FirebaseFirestore.instance
        .collection("Users")
        .doc("data")
        .get()
        .then((value) {
      name = value.get("name");
      email = value.get("email");
    }).whenComplete(() {
      setState(() {});
    });
  }
}
