import 'package:flutter/material.dart';
import 'package:flutter_application_1/dish_detail_screen.dart';

class DishesScreen extends StatefulWidget{
  final List<dynamic> dishes;
  const DishesScreen({super.key,required this.dishes});
  @override
  State<DishesScreen> createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Dishes")),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 10/15,
      mainAxisSpacing: 8,
      crossAxisSpacing: 10
      ),
      children: List.generate(
        widget.dishes.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: 
              (context) => DishDetailScreen( dish: widget.dishes[index]),
              ),
            );
          },
          child: Hero( 
            tag: widget.dishes[index]['name'],
            child: Container(
              width:200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 208, 207, 207),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                     image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.dishes[index]['image'],
                        // 'https://i0.wp.com/www.chitrasfoodbook.com/wp-content/uploads/2018/12/Instant-Suji-idli.jpg?ssl=1',
                      ),
                     ),
                     color:  Color.fromARGB(255, 166, 168, 166)           
                    ),
                  ),
                  Text( widget.dishes[index]['name'],
                  maxLines: 1,
                  overflow:  TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(
                    "${widget.dishes[index]['price']}",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
       ),
    );
  }
  
}