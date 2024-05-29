import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flavorhub_food_app/helper/images_path.dart';
import 'package:flavorhub_food_app/logIn_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var addressController = TextEditingController();
  bool isChecked = false;
  var formkey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImagesPath.TUKINLOGO,
                  height: 200,
                  width: 500,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextFormField(
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "Please enter name";
                      }
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Color(0xffFE3D58),
                        ),
                        hintText: "enter name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (phone) {
                    if (phone!.isEmpty) {
                      return "please enter phone number";
                    }
                  },
                  controller: phoneController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xffFE3D58),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      hintText: "enter phone number"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "please enter email";
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffFE3D58),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      hintText: "enter-emil"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (address) {
                    if (address!.isEmpty) {
                      return "please enter address";
                    }
                  },
                  controller: addressController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xffFE3D58),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      hintText: "enter address"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (password) {
                    if (password!.isEmpty) {
                      return "please enter password";
                    }
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Color(0xffFE3D58),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: 'password',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty) {
                      return "please enter correct confirm password";
                    }
                  },
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Color(0xffFE3D58),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      hintText: "conform password"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    Container(
                        child: Text(
                      "I have read agreement and accept it",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ))
                  ],
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      if (confirmPasswordController != passwordController) {
                        _auth
                            .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())
                            .then((value) {
                          saveDataToDatabase();
                        });
                        isChecked = !isChecked;
                      }
                    }
                  },
                  child: Container(
                      width: 310,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: isChecked ? Color(0xffFE3D58) : Colors.grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ))),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account! ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "LogIn",
                          style:
                              TextStyle(color: Color(0xffFE3D58), fontSize: 14),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // saveData() async {
  //   String id =
  //       FirebaseFirestore.instance.collection("data").doc().id.toString();
  //   await FirebaseFirestore.instance.collection("data").doc(id).set({
  //     "id": id,
  //     "name": nameController.text.toString(),
  //     "email": emailController.text.toString(),
  //     "password": passwordController.text.toString(),
  //   }).whenComplete(() {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => LoginScreen()));
  //   });
  // }

  staticData() {
    FirebaseFirestore.instance.collection("userInfo").doc("details").set({
      "name": nameController.text.toString(),
      "phone": phoneController.text.toString(),
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
      "address": addressController.text.toString(),
    }).whenComplete(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  void saveDataToDatabase() async {
    String? userUID = FirebaseAuth.instance.currentUser!.uid;

    await FirebaseFirestore.instance.collection("users").doc(userUID).set({
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
      "name": nameController.text.toString(),
      "phone": phoneController.text.toString(),
      "address": addressController.text.toString(),
      "userUID": userUID,
    }).whenComplete(() {
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    });
  }

//   createAccountWithEmailPassword(var email, var password) async {
//     try {
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       )
//           .whenComplete(() {
//             String? userUID = FirebaseAuth.instance.currentUser?.uid;
//               FirebaseFirestore.instance.collection("userInfo").doc(userUID).set({
//                 "name": nameController.text.toString(),
//                 "phone": phoneController.text.toString(),
//                 "email": emailController.text.toString(),
//                 "password": passwordController.text.toString(),
//               }).whenComplete(() {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => LoginScreen()));
//               });
//       });
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }
// // || RegExp(r'^[@ .]+$').hasMatch(email!)
}