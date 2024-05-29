import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/home_menu.dart';
import 'package:flavorhub_food_app/logIn_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool loading = false;
  String  userUID = "";
  var address,password, phone, email, name;

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var addressController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeMenuScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  icon: Icon(
                    Icons.logout,
                    color: Color(0xffFE3D58),
                  )),
            ),
          ),
        ],
      ),
      body: loading == true
          ? Center(
              child: CircularProgressIndicator(
              strokeWidth: 3,
            ))
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      ImagesPath.TUKINLOGO,
                      height: 200,
                      width: 400,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData();
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData();
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData();
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData();
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData();
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Color(0xffFE3D58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          updateData();
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 310,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffFE3D58),
                        ),
                        child: Center(
                            child: Text(
                          "Update",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  getData() async {
    userUID = FirebaseAuth.instance.currentUser!.uid;
    print("My User UID is : $userUID");
    setState(() {
      loading = true;
    });
    await FirebaseFirestore.instance.collection("users").doc(userUID).get().then((value) {
      name = value.get("name");
      email = value.get("email");
      password = value.get("password");
      phone = value.get("phone");
      address = value.get("address");

      nameController.text = name;
      emailController.text = email;
      passwordController.text = password;
      phoneController.text = phone;
      addressController.text = address;
    }).whenComplete(() {
      setState(() {
        loading = false;
      });
    });
  }

  updateData() {
    FirebaseFirestore.instance.collection("users").doc(userUID).update({
      "name": nameController.text.toString(),
      "phone": phoneController.text.toString(),
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
      "address": addressController.text.toString(),
    }).then((value) {
      setState(() {});
    });
  }

  deleteData() {
    FirebaseFirestore.instance.collection("users").doc(userUID).delete();
  }
}

//   getData() async {
//     userUID = FirebaseAuth.instance.currentUser!.uid;
//     setState(() {
//       loading = true;
//     });
//     await FirebaseFirestore.instance
//         .collection("users")
//         .doc(userUID)
//         .get()
//         .then((value) {
//       name = value.get("name");
//       email = value.get("email");
//       password = value.get("password");
//       phone = value.get("phone");
//       address = value.get("address");
//
//
//       nameController.text = name.toString();
//       emailController.text = email.toString();
//       passwordController.text = password.toString();
//       phoneController.text = phone.toString();
//       addressController.text = address.toString();
//     }).whenComplete(() {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//
//   updateData() {
//     FirebaseFirestore.instance.collection("users").doc(userUID).update({
//       "name": nameController.text.toString(),
//       "phone": phoneController.text.toString(),
//       "email": emailController.text.toString(),
//       "password": passwordController.text.toString(),
//       "address": addressController.text.toString(),
//     }).then((value) {
//       setState(() {
//       });
//     });
//   }
//
//
//   deleteData() {
//     FirebaseFirestore.instance.collection("users").doc(userUID).delete();
//   }
// }

// void updateData() {
//   FirebaseFirestore.instance.collection("users").doc(userUID).update({
//     "name": nameController.text.toString(),
//     "phone": phoneController.text.toString(),
//     "email": emailController.text.toString(),
//     "password": passwordController.text.toString(),
//     "address": addressController.text.toString(),
//   }).then((_) {
//     // Update UI after data update
//     setState(() {
//       // Optionally, you can add a success message or trigger any UI updates here
//     });
//     print("Data updated successfully");
//   }).catchError((error) {
//     // Handle errors
//     print("Failed to update data: $error");
//     // Optionally, show a snackbar or display an error message to the user
//   });
// }

// getData() {
//   FirebaseFirestore.instance
//       .collection("userInfo")
//       .doc("details")
//       .get()
//       .then((value) {
//     name = value.get("name");
//     phone = value.get("phone");
//     email = value.get("email");
//     password = value.get("password");
//   }).whenComplete(() {
//     setState(() {});
//   });
// }
