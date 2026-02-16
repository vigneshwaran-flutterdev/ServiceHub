import 'package:flutter/material.dart';

class ElectricianPage extends StatefulWidget {
  const ElectricianPage({super.key});

  @override
  State<ElectricianPage> createState() => _ElectricianPageState();
}

class _ElectricianPageState extends State<ElectricianPage> {
  List<Map<String,dynamic>> details = [
    {
      'name' : 'Komala',
      'rating':3.50,
      'place':"Krishnagiri",
      'number':"9655120426",
    },
    {
      'name':'Henry ',
      'rating':4.50,
      'place':"Trichy",
      'number':"9876543210",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Electrician',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

    );
  }
}
Widget createWidget(BuildContext context, String name, int number , String place, double val){
  return Container(
    height:200,
    width: double.infinity,
    decoration: BoxDecoration(
      border:BoxBorder.all(
        color:const Color.fromARGB(255, 204, 203, 203),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style: TextStyle(
          color: Colors.redAccent,
          fontSize: 17,
          fontWeight:FontWeight.bold,
        )
        ),
        Row(
          children: [
            Icon(Icons.call),
            SizedBox(width: 10,height: 10,),

          ],
        ),
        SizedBox(height: 20,),

      ],
    ),
  );
}
