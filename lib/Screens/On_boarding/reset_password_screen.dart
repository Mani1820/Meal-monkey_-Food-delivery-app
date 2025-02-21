import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Reset Password',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  color: ColorExtension.primaryText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Enter your email address or phone number to\nreceive a OTP to create a new password via email',
              style: TextStyle(
                fontFamily: 'Metropolis',
                color: ColorExtension.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
