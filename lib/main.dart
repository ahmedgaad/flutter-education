import 'package:flutter/material.dart';

import 'modules/welcome.dart';

void main() {
  runApp(const Education());
}

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'علمني',
        home: Welcome(),
      ),
    );
  }
}
