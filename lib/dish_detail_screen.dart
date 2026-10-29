import 'package:flutter/material.dart';


class DishDetailScreen extends StatefulWidget{
   final Map<String , dynamic> dish;
   const DishDetailScreen({super.key,required this.dish});
   
   @override
   State<DishDetailScreen> createState() => _DishDetailScreenState();
}

class _DishDetailScreenState extends State<DishDetailScreen> {

  bool isSaved = false;

  void orderDish() {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("${widget.dish['name']} ordered 🛒"),
    ),
  );
}

// void saveDish() {
//   setState(() {
//     isSaved = !isSaved;
//   });

//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(
//         isSaved
//             ? "${widget.dish['name']} saved ❤️"
//             : "Removed from saved",
//       ),
//     ),
//   );
// }
  
  @override 
  Widget build(BuildContext content) {
    return Hero(
      tag:
          widget
              .dish['name'],
     child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.dish['image'],
                    ),
                    ),
              ),
            ),
            Text(
              widget.dish['name'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(" ${widget.dish['price']}",style: TextStyle(fontSize: 20)),
            Text(
              widget.dish['description'],
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
            Text(
              widget.dish['making']),
              Text(widget.dish['ingredients'].toString()),
              
    SizedBox(height: 20),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: orderDish,
          child: Text("Order"),
        ),
        // ElevatedButton(
        //   onPressed: saveDish,
        //   child: Text(isSaved ? "Saved ❤️" : "Save"),
        // ),
      ],
    ),

    SizedBox(height: 20),
   ]
        ),

      ),
     ),
     );
  }
}