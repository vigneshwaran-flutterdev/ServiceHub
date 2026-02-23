// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:servicehub/pages/firstscreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => SignupState();
}

Future<String> signUp(
  String email,
  String password,
  String username,
  phon,
  Timestamp stamp,
  BuildContext context,
) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    String id = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance.collection('users').doc(id).set({
      'createdAt': stamp,
      'email': email,
      'phno': phon,
      'username': username,
    });
    return 'You signup is done';
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}

class SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.orangeAccent.shade200,
                Colors.orangeAccent.shade200,
                Colors.orangeAccent.shade200,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset("assets/images/image1.jpeg", height: 90, width: 100),
              SizedBox(height: 10),
              Text(
                "Service Hub",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Fix it fast, book it smart.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Icon(Icons.miscellaneous_services),
                  SizedBox(height: 60),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildtext("Email Address"),
                        SizedBox(height: 8),
                        buildtff("Enter your Email", Icons.email, email),
                        SizedBox(height: 16),
                        buildtext("Password"),
                        SizedBox(height: 8),
                        buildtff("Enter Your Password", Icons.password, password),
                        SizedBox(height: 16),
                        buildtext("Username"),
                        SizedBox(height: 8),
                        buildtff("Enter your Username", Icons.person, username),
                        SizedBox(height: 16),
                        buildtext("Phone Number"),
                        SizedBox(height: 8),
                        buildtff("Enter your 10-digit number", Icons.phone, phoneNumber),
                        SizedBox(height: 25),
                        Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              final val = await signUp(
                                email.text,
                                password.text,
                                username.text,
                                int.tryParse(phoneNumber.text),
                                Timestamp.now(),
                                context,
                              );
                              if (val == 'You signup is done') {
                                Center(child: CircularProgressIndicator());
                                password.clear();
                                email.clear();
                                username.clear();
                                phoneNumber.clear();

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(val.toString()),
                                  ),
                                );

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Firstscreen()));
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(val.toString()),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent.shade200,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              fixedSize: Size(120, 40),
                            ),
                            child: buildtext("SignUp"),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildtext(String txt) {
  return Text(
    txt,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget buildtff(String txt, IconData ic, TextEditingController controller) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Color.fromRGBO(225, 95, 27, .3), blurRadius: 20, offset: Offset(0, 10))
      ],
    ),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: txt,
        focusColor: Colors.grey,
        prefixIcon: Icon(ic),
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
