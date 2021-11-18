import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/Components/onboard_content.dart';
import 'package:midterm_project/Components/text_button.dart';
import 'package:midterm_project/Components/nav_bar.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);
  @override 
  _OnboardState createState() => _OnboardState();
}
const kAnimationDuration = Duration(milliseconds: 200);

class _OnboardState extends State<Onboarding> {
  int currentPage = 0;

  List<Map<String, String>> onboardData = [
    {
      "image": "assets/images/food.png",
      "text": "Eat Healthy",
      "text2": "Maintaining good health should",
      "text3": "be primary focus of everyone"
    },
    {
      "image": "assets/images/kitchen.png",
      "text": "Healthy Recipes",
      "text2": "Browse thousands of healthy",
      "text3": "recipes from all over the world"
    },
    {
      "image": "assets/images/track.png",
      "text": "Track Your Health",
      "text2": "With amazing inbuilt tools you",
      "text3": "can track your progress"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardData.length,
                  itemBuilder: (context, index) =>
                      OnboardContent(
                        image: onboardData[index]["image"],
                        text: onboardData[index]["text"],
                        text2: onboardData[index]["text2"],
                        text3: onboardData[index]["text3"],
                      ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboardData.length,
                                (index) => dotContainer(index: index),
                          ),
                      ),
                      const SizedBox(height: 40),
                      DefaultButton(
                        text:"Get Started",
                        press: () {
                          print('GetStarted');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NavBar()),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          Text("Already Have An Account?", textAlign: TextAlign.center,
                            style: GoogleFonts.workSans(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                            TextButton(
                              child: Text(
                                "Log In",
                                style: GoogleFonts.workSans(
                                color: const Color(0xFF83AF7D),
                                fontSize: 18.0,
                              ),),
                              onPressed: () {print('Log In'); },
                            )
                        ]
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  AnimatedContainer dotContainer({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? const Color(0xFFFF9385) : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}