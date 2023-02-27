import 'package:education/modules/auth/login.dart';
import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurGoal extends StatelessWidget {
  const OurGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 32.0, top: 65.0),
                child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(children: [
                    TextSpan(
                      text: ':مميزات تطبيقنا\n',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 35.0,
                        color: const Color(0xff161C2B),
                      ),
                    ),
                    TextSpan(
                        text: subTitle,
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6F6F79),
                        ))
                  ]),
                ),
              ),
            ),
            Image.asset('$assetsPath/ourgoal.png'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 18.0),
              child: defaultButton(
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  text: 'التالي'),
            ),
          ],
        ),
      ),
    );
  }
}
