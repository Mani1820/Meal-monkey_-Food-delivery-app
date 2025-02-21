import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/login_screen.dart';
import 'package:meal_monkey/Screens/On_boarding/signup_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'Assets/images/image 1.png',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Meal ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Metropolis',
                    color: ColorExtension.primaryBg,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Monkey ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Metropolis',
                    color: ColorExtension.primaryText,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Food delivery",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'Metropolis',
                color: ColorExtension.primaryText,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Metropolis',
                color: ColorExtension.primaryText,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            RoundedButton(
              title: 'Login',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => LoginScreen(),
                  ),
                );
              },
              type: ButtonType.backgroundPrimary,
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              title: 'Create an Account',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) => SignupScreen(),
                  ),
                );
              },
              type: ButtonType.textPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
