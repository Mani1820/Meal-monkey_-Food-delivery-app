import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/login_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Signup',
              style: TextStyle(
                  color: ColorExtension.primaryText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Metropolis'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'add your details to signup',
              style: TextStyle(
                  color: ColorExtension.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Metropolis'),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              spacing: 30,
              children: [
                RoundedTextField(
                  hintText: 'Name',
                  controller: TextEditingController(),
                ),
                RoundedTextField(
                  hintText: 'Email',
                  controller: TextEditingController(),
                ),
                RoundedTextField(
                  hintText: 'Address',
                  controller: TextEditingController(),
                ),
                RoundedTextField(
                  hintText: 'Mobile no.',
                  controller: TextEditingController(),
                ),
                RoundedTextField(
                  hintText: 'Password',
                  controller: TextEditingController(),
                ),
                RoundedTextField(
                  hintText: 'Confirm Password',
                  controller: TextEditingController(),
                ),
                RoundedButton(
                  title: 'Signup',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: ColorExtension.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Login ',
                        style: TextStyle(
                            color: ColorExtension.primaryBg,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Metropolis'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
