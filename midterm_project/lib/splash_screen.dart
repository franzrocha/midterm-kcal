import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding.dart';


class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const Onboarding()
            ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/seamless.png'),
                  fit: BoxFit.fitHeight,),
                color: Color(0xFF83AF7D)),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("kcal",textAlign:TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 70.0,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CircularProgressIndicator(
                      valueColor:  AlwaysStoppedAnimation<Color>(Colors.orange),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                    ),

                    const SizedBox(height: 15),
                    Text(
                      "ZUAMICA",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.varelaRound(
                          fontSize: 18.0,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w600)  ,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}