import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
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
            children: <Widget>[
              const SizedBox(height: 60),
              Image.asset('assets/images/smiles.png',
                width: 325,
                height: 325,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
