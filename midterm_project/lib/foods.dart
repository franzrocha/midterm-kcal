import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/Foods/food_view.dart';
import 'package:midterm_project/Foods/food_data.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<FoodData> listFoodData = FoodPageData.getFoodData();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.5 / 1,
        children: List.generate(
          listFoodData.length, (index) {
            return GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(
                    builder: (context) => FoodView(passedIndex: index,),),);},
              child: buildGridItem(index),
            );
          },
        ),
      ),
    );
  }

  Widget buildGridItem(int index) =>
      Container(
        decoration: BoxDecoration(
        color: const Color(0xFFFEFAEF),
        borderRadius: BorderRadius.circular(15),
    ),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image: AssetImage(listFoodData[index].icon), width: 50, height: 50,),
        Text(listFoodData[index].name,
            style: GoogleFonts.workSans(fontSize: 20, color: const Color(0xFF4D4127))),
        const Icon(Icons.arrow_forward_ios_rounded),
      ],
    ),
  );
}
