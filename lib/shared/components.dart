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

Widget defaultFormField({
  String? hint,
  bool? isPassword = false,
  required final TextInputType type,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20.0,
    ),
    child: TextFormField(
      keyboardType: type,
      obscureText: isPassword ?? false,
      textDirection: TextDirection.rtl,
      // autofocus: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
          ),
          hintText: hint,
          hintStyle: GoogleFonts.poppins(
            fontSize: 16.0,
            color: const Color(0xFFA3A3AE),
            fontWeight: FontWeight.w400,
          ),
          hintTextDirection: TextDirection.rtl),
    ),
  );
}

Widget card({
  required String image,
  required String title,
  required String subTitle,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 153,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        elevation: 14.0,
        // margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 88.0,
              height: 84.0,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            Text(
              subTitle,
              // textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF727272)),
            ),
          ],
        ),
      ),
    ),
  );
}
