import 'package:education/shared/components.dart';
import 'package:education/shared/constants.dart';
import 'package:flutter/material.dart';

class PsersonalInfoScreen extends StatelessWidget {
  const PsersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            '$assetsPath/cover2.png',
          ),
          const SizedBox(
            height: 10.0,
          ),
          infoListTile(
            icon: Icons.phone,
            text: '+201096295945',
          ),
          infoListTile(
            icon: Icons.location_on_outlined,
            text: 'Damietta',
          ),
          infoListTile(
            icon: Icons.chat_bubble_outline,
            text: 'abdullah@alsalous.com',
          ),
          const SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: defaultButton(
                function: () {
                  Navigator.pop(context);
                },
                text: 'الرجوع'),
          )
        ],
      ),
    );
  }
}

Widget infoListTile({
  required String text,
  required IconData icon,
}) {
  return Container(
    width: double.infinity,
    height: 62.0,
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 2.0),
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.white,
    ),
    child: ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        text,
      ),
      trailing: const Icon(Icons.arrow_right_alt),
    ),
  );
}
