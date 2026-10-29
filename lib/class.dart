import 'package:flutter/material.dart';
import 'package:flutter_application_1/meal_app_data.dart';

class Class extends StatefulWidget {
  const Class({super.key});

  @override
    State<Class> createState() => _ClassState();
}

class _ClassState extends State<Class> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blue, title: Text("Meal App")),
    body: SingleChildScrollView(
      child: Column(
        children: List.generate( 
          mealAppData.length,
      (index)=> Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                mealAppData[index]['https://upload.wikimedia.org/wikipedia/commons/0/00/An_ideal_South_Indian_Thali.jpg'],
              ),
              ),
              color: Colors.pink,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.black45,
            
            ),
            child: Text(
              mealAppData[index]['name'],
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.white,fontSize: 28),
            ),
          ),
        ],
      ),
      ),
      ),
    ),
   );
}
}