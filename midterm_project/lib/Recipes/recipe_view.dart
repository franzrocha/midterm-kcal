import 'package:flutter/material.dart';
import 'package:midterm_project/Recipes/recipe_data.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeView extends StatefulWidget {
  const RecipeView({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _RecipeViewState createState() => _RecipeViewState();
}

class _RecipeViewState extends State<RecipeView> {
  List<Recipe> listRecipe = RecipeUtils.getRecipeData();
  @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(
        "Recipes",
        style: GoogleFonts.workSans(
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),

    body: ListView(
      children: [
        //1st element
        Image(
          image: AssetImage(listRecipe[widget.passedIndex].imgPath),
          height: 200,
          width: 500,
          fit: BoxFit.cover,
        ),
        //2nd element
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFFFEFAEF),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                  ),
                  Text(
                    listRecipe[widget.passedIndex].timeCook.toString() +
                        ' mins',
                      style: GoogleFonts.workSans(
                      fontSize: 12,
                      color: const Color(0xFF4D4127))
                  ),
                  const Icon(Icons.people),
                  Text(
                    listRecipe[widget.passedIndex].servings.toString() +
                        ' serve',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          color: const Color(0xFF4D4127))
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                      Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                      Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                      Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                      Icon(Icons.star_rate, color: Color(0xFFFF9385), size: 17,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        //3rd element
        Row(
          children: [
            SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text(
                  listRecipe[widget.passedIndex].recipeName,
                  style: GoogleFonts.workSans(
                    fontSize: 29,
                  ),
                ),
              ),
            ),
            const CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xFFf4f9f3),
              child: Icon(
                Icons.favorite_border,
                color: Color(0xFF83AF7D),
              ),
            ),
          ],
        ),
        //4th element
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Text(
            listRecipe[widget.passedIndex].recipeDesc,
            style: GoogleFonts.workSans(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Ingredients',
            style: GoogleFonts.workSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: SizedBox(
            height: 250,
            width: 300,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount:
                listRecipe[widget.passedIndex].listIngredients.length,
                itemBuilder: (context, index) {
                  return buildIngredientCard(widget.passedIndex, index);
                }),
          ),
        ),
        //6th element
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Directions',
         style: GoogleFonts.workSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listRecipe[widget.passedIndex].directions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        'Step ' + (index + 1).toString(),
                         style: GoogleFonts.workSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Text(
                      listRecipe[widget.passedIndex].directions[index],
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 0, 30),
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        fixedSize: const Size(350, 50),
        primary: const Color(0xFFFF9385),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),),
        onPressed: () {
        print('Add to Favorite');
            },
           child: Text('Add to Favorite',
        style: GoogleFonts.workSans(
        color: Colors.white,
        fontSize: 22.0,
    ),
    ),),),

      );
    }

    Widget buildIngredientCard(int recipeIndex, int ingredientIndex) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: SizedBox(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(listRecipe[recipeIndex]
                    .listIngredients[ingredientIndex]
                    .imgPath),
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  listRecipe[recipeIndex]
                      .listIngredients[ingredientIndex]
                      .ingredientName,
                  style: GoogleFonts.workSans(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  listRecipe[recipeIndex]
                      .listIngredients[ingredientIndex]
                      .amount
                      .toString() +
                      ' ' +
                      listRecipe[recipeIndex]
                          .listIngredients[ingredientIndex]
                          .measurement,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.workSans(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
