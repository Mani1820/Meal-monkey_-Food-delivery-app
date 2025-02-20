import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

enum ButtonType { backgroundPrimary, textPrimary }

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.onPressed,
    required this.title,
    this.type = ButtonType.backgroundPrimary,
  });
  final VoidCallback? onPressed;
  final String title;
  final ButtonType type;

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final double height = media.height * 0.07;
    final double width = media.width * double.infinity;
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: type == ButtonType.backgroundPrimary
              ? null
              : Border.all(
                  color: ColorExtension.primaryBg,
                ),
          color: type == ButtonType.backgroundPrimary
              ? ColorExtension.primaryBg
              : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: type == ButtonType.backgroundPrimary
                  ? Colors.white
                  : ColorExtension.primaryBg,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
