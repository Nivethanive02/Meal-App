import 'package:flutter/material.dart';
import 'package:flutter_application_1/dishes_screen.dart';
import 'package:flutter_application_1/meal_app_data.dart';

class CatScreen extends StatefulWidget{
   const CatScreen({super.key});
   @override
   State<CatScreen>createState() => _CatScreenState();

}
class _CatScreenState extends State<CatScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Meal categories")),
      body: ListView(
        children: List.generate(
          mealAppData.length,
         (index) => GestureDetector(
          onTap: (){
            Navigator.of (context).push(
              MaterialPageRoute(
                builder:
                (context)=> DishesScreen( dishes: mealAppData[index]['dishes']) ,
                ),
            );
          },
           child: Stack(
           alignment:Alignment.bottomCenter,
                   children: [
            Container(
              height: 250,
              width: double.infinity,margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage(mealAppData[index]['image'],
                  ),
                ),                
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black45,              
              ),
                child: Text(mealAppData[index]['name'],
                  style: TextStyle(color: Colors.white,fontSize: 35),
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