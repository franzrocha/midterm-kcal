import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/foods.dart';
import 'package:midterm_project/recipes.dart';


class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Favorites",
          style: GoogleFonts.workSans(
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
        body: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
            children:[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFE2E5DE),
                  borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: TabBar
                 (
                  unselectedLabelColor: const Color(0xFF91c789),
                  labelColor: Colors.white,
                  indicator: BoxDecoration(color: const Color(0xFF91c789),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: [
                SizedBox(
                  height: 60,
                  child: Tab(
                      child:
                      Text('Foods', style: GoogleFonts.workSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      )),
                ),
                    SizedBox(
                      height: 60,
                      child: Tab(
                          child:
                          Text('Recipes', style: GoogleFonts.workSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          )),
                    ),
              ]),
            )
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 500,
              child: TabBarView(
                children: [
                    FoodPage(),
                    RecipePage(),
                ],
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

