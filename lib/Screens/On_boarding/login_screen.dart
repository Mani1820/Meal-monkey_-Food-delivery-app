import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/Reset_Password/reset_password_screen.dart';
import 'package:meal_monkey/Screens/On_boarding/signup_screen.dart';
import 'package:meal_monkey/Screens/main_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: ColorExtension.primaryText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Metropolis'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'add your details to login',
              style: TextStyle(
                  color: ColorExtension.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Metropolis'),
            ),
            SizedBox(
              height: 30,
            ),
            RoundedTextField(
              hintText: 'Email Address',
              controller: emailController,
            ),
            SizedBox(
              height: 30,
            ),
            RoundedTextField(
              hintText: 'Password',
              controller: passwordController,
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
              title: 'Login',
              type: ButtonType.backgroundPrimary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPasswordScreen(),
                  ),
                );
              },
              child: Text(
                'forget password?',
                style: TextStyle(
                  color: ColorExtension.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Metropolis',
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'or login with',
              style: TextStyle(
                color: ColorExtension.secondaryText,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: 'Metropolis',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 62, 216),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Login with facebook',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width * double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 0, 0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Login with google',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
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
                        builder: (ctx) => const SignupScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
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
      ),
    );
  }
}
