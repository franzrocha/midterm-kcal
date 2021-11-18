import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, 
    required this.text,
    required this.press,}) : super(key: key);

  final String? text;
  final Function? press;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFF9385),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: GoogleFonts.workSans(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),

        ),
      );
  }
}