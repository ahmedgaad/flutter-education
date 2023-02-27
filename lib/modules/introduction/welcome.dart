import 'package:education/modules/introduction/our_goal.dart';
import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Image.asset('$assetsPath/welcome.png'),
            const SizedBox(
              height: 21.0,
            ),
            Text(
              'أهلا بك في \n تطبيق علمني',
              style: GoogleFonts.inter(
                // fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: const Color(0xff161C2B),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: defaultButton(
                  function: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const OurGoal(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(0.0, 1.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                                );
                          }),
                    );
                  },
                  text: 'أبدا'),
            )
          ],
        ),
      ),
    );
  }
}
