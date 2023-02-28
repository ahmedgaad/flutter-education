import 'package:education/modules/article.dart';
import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              '$assetsPath/luca.jpg',
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 174.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF4E74F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text(
                            '1 hour, 20 minute',
                            style: GoogleFonts.inter(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const Icon(
                            Icons.hourglass_bottom_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    ':باقي الدروس',
                    style: GoogleFonts.dmSans(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              trailing: Image.asset(
                '$assetsPath/playdark.png',
              ),
              title: Text(
                'الدرس الأول',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6F6F79),
                  fontSize: 13.0,
                ),
              ),
            ),
            ListTile(
              trailing: Image.asset('$assetsPath/playlight.png'),
              title: Text(
                'الدرس الثاني',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6F6F79),
                  fontSize: 13.0,
                ),
              ),
            ),
            ListTile(
              trailing: Image.asset('$assetsPath/playlight.png'),
              title: Text(
                'الدرس الثالث',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6F6F79),
                  fontSize: 13.0,
                ),
              ),
            ),
            ListTile(
              trailing: Image.asset('$assetsPath/playlight.png'),
              title: Text(
                'الدرس الرابع',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6F6F79),
                  fontSize: 13.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultButton(
                  function: () {
                    Navigator.pop(context);
                  },
                  text: 'رجوع'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultButton(
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_)=> const ArticleScreen())
                    );
                  },
                  text: 'مقال'),
            ),
          ],
        ),
      ),
    );
  }
}
