import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class ProfileElement2 extends StatelessWidget {
  const ProfileElement2({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 30,
              color: ColorExtension.primaryText,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: ColorExtension.primaryText),
            ),
          ),
        ]);
  }
}
