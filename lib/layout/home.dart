import 'package:education/modules/course_details.dart';
import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 192.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 192.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4E74F9),
                          borderRadius: BorderRadius.circular(
                            30.0,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        left: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            textDirection: TextDirection.rtl,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              suffixIcon: Icon(Icons.search),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'بحث.....',
                              hintTextDirection: TextDirection.rtl,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    100.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            '،مرحبا\n صباح الخير',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.dmSans(
                              fontSize: 29.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.share_outlined,
                            color: Color(0xFF4E74F9),
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    ':المجالات والمراحل التعليمية',
                    // textAlign: TextAlign.right,
                    style: GoogleFonts.dmSans(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                CustomScrollView(
                  shrinkWrap: true,
                  primary: false,
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.all(6.0),
                      sliver: SliverGrid.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img6.png',
                            title: 'حاسب ألي\n الصف الأول الثانوي',
                            subTitle: 'فيديوهات 3',
                          ),
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img5.png',
                            title: 'حاسب ألي\n الصف الثاني الثانوي',
                            subTitle: 'فيديوهات 3',
                          ),
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img4.png',
                            title: 'قريبا',
                            subTitle: 'Unkown',
                          ),
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img3.png',
                            title: 'شرح كيفية \n استخدام الشاشة الذكية',
                            subTitle: 'فيديوهات 3',
                          ),
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img4.png',
                            title: 'قريبا',
                            subTitle: 'Unkown',
                          ),
                          card(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const CourseDetails(),
                                ),
                              );
                            },
                            image: '$assetsPath/img4.png',
                            title: 'قريبا',
                            subTitle: 'Unkown',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
