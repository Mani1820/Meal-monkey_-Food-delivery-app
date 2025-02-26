import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.prefixIcon,
  });

  final TextEditingController? controller;
  final String hintText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: ColorExtension.placeholder.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            if (prefixIcon != null) prefixIcon!,
            Expanded(
              child: TextField(
                controller: controller,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: ColorExtension.secondaryText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
