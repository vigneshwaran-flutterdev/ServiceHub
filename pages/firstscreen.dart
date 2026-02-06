import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  List<Widget> list = [
    Icon(
      Icons.home,
      size: 20,
    ),
    Icon(
      Icons.history,
      size: 20,
    ),
    Icon(
      Icons.person,
      size: 20,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'ServiceHub',
            style: TextStyle(
              color: Colors.yellow[500],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Align(
        alignment: AlignmentGeometry.center,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 60),
              serviec(Icon(Icons.water_drop), 'Plumbings'),
              SizedBox(height: 20),
              serviec(Icon(Icons.thunderstorm_sharp), 'Electrician'),
              SizedBox(height: 20),
              serviec(Icon(Iconsax.home4), 'House Cleaning'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(items: list),
    );
  }
}

Widget serviec(Icon icon, String name) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: List.empty(growable: false),
      borderRadius: BorderRadius.circular(20),
      border: BoxBorder.all(
        color: const Color.fromARGB(255, 153, 153, 153),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
          SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 25,
          )
        ],
      ),
    ),
  );
}
