import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardContent extends StatelessWidget{
  const OnboardContent({Key? key,
    required this.image,
    required this.text,
    required this.text2,
    required this.text3,
  }): super(key: key);

  final String? image, text, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text("kcal", textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: const Color(0xFF83AF7D),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        const Spacer(flex: 2),
        Image.asset(image!,
          width: 260,
          height: 260,
        ),
        const Spacer(flex: 1),
        Text(text!, textAlign: TextAlign.center,
          style: GoogleFonts.workSans(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height:10),
        Text(text2!, textAlign: TextAlign.center,
          style: GoogleFonts.workSans(
            color: Colors.grey,
            fontSize: 18.0,
          ),
        ),
        Text(text3!, textAlign: TextAlign.center,
          style: GoogleFonts.workSans(
            color: Colors.grey,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}