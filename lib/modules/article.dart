import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  '$assetsPath/cover.png',
                  width: double.infinity,
                ),
                Text(
                  'منهج الصف \n الأول الثانوي',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontSize: 43.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                coverSubTitle,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.poppins(
                    fontSize: 16.0, color: const Color(0xFF6F6F79)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: defaultButton(
                function: () {
                  Navigator.pop(context);
                },
                text: 'رجوع',
              ),
            )
          ],
        ),
      ),
    );
  }
}
