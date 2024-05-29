import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/home_menu.dart';
import 'package:flavorhub_food_app/home_screen.dart';
import 'package:flavorhub_food_app/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Image.asset(
                  ImagesPath.TUKINLOGO,
                  height: 200,
                  width: 500,
                )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextFormField(
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "Please enter username";
                      }
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      hintText: "email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffFE3D58),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Please enter email";
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: "password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Color(0xffFE3D58),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      login();
                      setState(() {
                        saveData();
                      });
                    }
                  },
                  child: Container(
                      width: 310.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xffFE3D58),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ))),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not register yet? please, ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: Color(0xffFE3D58), fontSize: 14),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ImagesPath.FACEBOOKLOGO),
                    ),
                    Container(
                      height: 60,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ImagesPath.TWITTERLOGO),
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ImagesPath.GOOGLEPLUSLOGO),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  saveData() {
    // String id =FirebaseFirestore.instance.collection("Users").doc().id.toString();
    FirebaseFirestore.instance.collection("Users").doc("data").set({
      // "id": id,
      "name": nameController.text.toString(),
      "email": emailController.text.toString(),
    });
  }

  // void createSignInUserWithEmailPassword() async {
  //   String email = emailController.text.toString();
  //   String password = nameController.text.toString();
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     )
  //         .whenComplete(() {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //     });
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //     }
  //   }
  // }
  void login() {
    _auth
        .signInWithEmailAndPassword(
            email: nameController.text.toString(),
            password: emailController.text.toString())
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeMenuScreen()));
    });
  }
}
