import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class ProfileElement extends StatelessWidget {
  const ProfileElement(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: ColorExtension.primaryText,
            ),
          ),
          SizedBox(
            width: media.width * 0.2,
          ),
          Text(
           subtitle,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: ColorExtension.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}
