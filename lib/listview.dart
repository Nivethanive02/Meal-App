import 'package:flutter/material.dart';

class CatScreen extends StatefulWidget{
  const CatScreen({super.key});
  @override
  State<CatScreen> createState() => _CatScreenState();

}
 class _CatScreenState extends State<CatScreen>
 {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar( backgroundColor: Colors.green,
    title: Text("catscreen")
    ),
    body:ListView(
      children: List.generate(20, 
      // ignore: non_constant_identifier_names
      (Index) => Container(
        height: 50,
        color: Colors.amber,
        child: Center(child: Text("class $Index")),
      ),
      ),
    ),
  );
  }
 }