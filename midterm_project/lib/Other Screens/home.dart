import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "Home",
            style: GoogleFonts.workSans(
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
        child: Expanded(
            child: Column(
            children: <Widget> [
              const SizedBox(height: 50),
              Image.asset('assets/images/healthy.png',
                width: 325,
                height: 325,
              ),
              Text("Welcome to",
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("kcal", textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: const Color(0xFF83AF7D),
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                ),
              ),
            ],
           ),
          ),
        ),
    );
  }
}