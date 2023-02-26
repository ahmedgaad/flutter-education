import 'package:education/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 32.0, top: 65.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    ':تسجيل الدخول',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 35.0,
                      color: const Color(0xff161C2B),
                    ),
                  ),
                ),
              ),
              defaultFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
