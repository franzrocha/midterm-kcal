import 'package:flutter/material.dart';
import 'package:midterm_project/Recipes/recipe_view.dart';
import 'package:midterm_project/Recipes/recipe_data.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {

    List<Recipe> listRecipe = RecipeUtils.getRecipeData();

    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: listRecipe.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  RecipeView(
                    passedIndex: index,
                  ),
                ),
              );
            },
            child: buildListItem(index),
          );
        },
      );
    }

    Widget buildListItem(int index) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFEFAEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image(
                    image: AssetImage(listRecipe[index].imgPath),
                    height: 200,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                  ),
                  Text(
                    listRecipe[index].timeCook.toString() + ' mins',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          color: const Color(0xFF4D4127))
                  ),
                  const Icon(Icons.people),
                  Text(
                    listRecipe[index].servings.toString() + ' serve',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          color: const Color(0xFF4D4127))
                  ),
                  const Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                  const Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                  const Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                  const Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                  const Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
              child: Text(
                listRecipe[index].recipeName,
                style: GoogleFonts.workSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Text(
                listRecipe[index].shortDesc,
                style: GoogleFonts.workSans(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
}
