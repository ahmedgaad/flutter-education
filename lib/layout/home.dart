import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: 192.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFF4E74F9),
                        borderRadius: BorderRadius.circular(
                          30.0,
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
