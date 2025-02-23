import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class TabScreenButton extends StatelessWidget {
  const TabScreenButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.selectedPage,
    required this.icon,
  });
  final bool selectedPage;
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selectedPage
                ? ColorExtension.primaryBg
                : ColorExtension.placeholder,
            size: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              color: selectedPage
                  ? ColorExtension.primaryBg
                  : ColorExtension.secondaryText,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Metropolis',
            ),
          ),
        ],
      ),
    );
  }
}
