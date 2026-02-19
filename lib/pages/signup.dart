import 'package:flutter/material.dart';
import 'package:servicehub/pages/firstscreen.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.amberAccent.shade400,
              Colors.amberAccent.shade700,
              Colors.amberAccent.shade100,
            ],
          ),
        ),
        child:Column(
          children: [
            Image.asset("assets/images/img_1.png", height:90, width: 100),
            SizedBox(height: 10),
            Text(
              "Service Hub",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Fix it fast, book it smart.",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Icon(Icons.miscellaneous_services),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      30
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildtext("Email Address"),
                        SizedBox(height: 8),
                        buildtff("Enter your Email", Icons.email),
                        SizedBox(height:16),
                        buildtext("Password"),
                        SizedBox(height: 8),
                        buildtff("Enter Your Password", Icons.password),
                        SizedBox(height: 16),
                        buildtext("Username"),
                        SizedBox(height: 8),
                        buildtff("Enter your Username", Icons.person),
                        SizedBox(height: 16),
                        buildtext("Phone Number"),
                        SizedBox(height: 8),
                        buildtff("Enter your 10-digit number", Icons.phone),
                        SizedBox(height: 25),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Firstscreen()));

                              });
                            },
                            child: buildtext("SignUp"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amberAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              fixedSize: Size(120, 40),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],),
      ),
    );
  }
}
Widget buildtext(String txt){
  return Text(txt,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}
Widget buildtff(String txt,IconData ic){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[BoxShadow(
            color: Color.fromRGBO(225, 95, 27, .3),
            blurRadius: 20,
            offset: Offset(0, 10)
        )]

    ),
    child: TextFormField(
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
        // labelText:"Enter Your Email Address",
        hintText: txt,
        focusColor: Colors.grey,
        prefixIcon: Icon(ic),
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white.withOpacity(0.2),
        filled: true,
      ),
    ),
  );
}
