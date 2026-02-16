import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:servicehub/pages/signup.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
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
        child: Column(
          children: [
            Column(
              children: [
                Image.asset("assets/images/img_1.png", height:90, width: 100),
                SizedBox(height: 2),
                Text(
                  "Service Hub",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height:2),
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
              ],
            ),
            SizedBox(height: 20),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildtext("Email Address"),
                      SizedBox(height: 5),
                      Form(
                        key: formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildcontainer("Enter your Email",Icons.email ),
                            SizedBox(height: 20,),
                            buildtext("Password"),

                            _buildcontainer("Enter your Password", Icons.password),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 170),
                          TextButton(
                              onPressed: () {},
                              child: buildtext("Forgot Password?")
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: Row(
                          children: [
                            SizedBox(width: 90),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));
                                });
                              },
                              child:buildtext("Sign In"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    7,
                                  ),
                                ),
                                fixedSize: Size(100, 50),
                              ),
                            ),
                            SizedBox(width: 90),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));

                                });
                              },
                              child: buildtext("Sign In"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amberAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                fixedSize: Size(100, 50),
                              ),
                            ),
                          ],
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
Widget _buildcontainer (String hntxt , IconData ic){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(225, 95, 27, .3),
          blurRadius: 20,
          offset:Offset(0,10),
        )]
    ),
    child: TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(7),
        ),
        fillColor: Colors.white.withOpacity(0.2),
        filled: true,
        hintText: hntxt,
        prefixIcon: Icon(ic),
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}
