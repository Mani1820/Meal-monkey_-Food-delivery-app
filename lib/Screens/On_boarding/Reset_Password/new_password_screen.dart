import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/login_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
              'New Password',
              style: TextStyle(
                fontFamily: 'Metropolis',
                color: ColorExtension.primaryText,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please enter your new password',
              style: TextStyle(
                fontFamily: 'Metropolis',
                color: ColorExtension.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            RoundedTextField(
              hintText: 'New Password',
              controller: TextEditingController(),
            ),
            SizedBox(
              height: 15,
            ),
            RoundedTextField(
              hintText: 'Confirm Password',
              controller: TextEditingController(),
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
              title: 'Reset Password',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
