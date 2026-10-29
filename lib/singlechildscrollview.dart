import 'package:flutter/material.dart';


class CatScreen extends StatefulWidget{
  const CatScreen ({ super.key});
 
  @override
  State<CatScreen> createState()=> _CatScreenState();
  }
  class _CatScreenState extends State<CatScreen>{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      title: Text("class")),
  body: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        50, 
      (index)=>Container(
        height: 200,
        width: 150,
        decoration:  BoxDecoration(
          color:  Colors.amberAccent,
          border: Border.all(color: Colors.black,width: 3),
        ),
        child:  Text(
          index.toString(),
          style: TextStyle(fontSize: 25,color: Colors.black),
        ),
      ),
      ),
    ),
  ),
    );
  }
  }
