import 'package:education/modules/auth/login.dart';
import 'package:education/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 32.0, top: 65.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    ':التسجيل',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 35.0,
                      color: const Color(0xff161C2B),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 59.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  ':أسم المستخدم',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff161C2B),
                  ),
                ),
              ),
              defaultFormField(type: TextInputType.name, hint: 'الأسم'),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                child: Text(
                  ':البريد الالكتروني',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff161C2B),
                  ),
                ),
              ),
              defaultFormField(
                type: TextInputType.emailAddress,
                hint: 'بريدك الالكتروني',
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 21.0, right: 20.0),
                child: Text(
                  ':كلمة المرور',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff161C2B),
                  ),
                ),
              ),
              defaultFormField(
                type: TextInputType.emailAddress,
                hint: '************',
                isPassword: true
              ),
            

              Padding(
                padding: const EdgeInsets.only(top: 21.0, right: 20.0),
                child: Text(
                  ':اعادة كلمة المرور',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff161C2B),
                  ),
                ),
              ),
              defaultFormField(
                type: TextInputType.emailAddress,
                hint: '************',
                isPassword: true
              ),
              const SizedBox(
                height: 21.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: defaultButton(function: () {}, text: 'التسجيل'),
              ),
              const SizedBox(
                height: 21.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:
                    defaultButton(function: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    }, text: 'لديك حساب بالفعل؟'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
