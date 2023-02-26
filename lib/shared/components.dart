import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 54.0,
  Color background = const Color(0xff4E74F9),
  double radius = 12.0,
  required Function() function,
  required String text,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: background,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget defaultFormField() {
  return TextFormField(
    autofocus: true,
  );
}

