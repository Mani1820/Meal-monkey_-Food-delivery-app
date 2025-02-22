import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/Reset_Password/new_password_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpFieledController = GlobalKey<OtpPinFieldState>();

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
              'We have sent an OTP to your Mobile',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Metropolis',
                color: ColorExtension.primaryText,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please check your mobile number for OTP',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Metropolis',
                  color: ColorExtension.secondaryText),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: OtpPinField(
                key: _otpFieledController,
                autoFillEnable: false,
                textInputAction: TextInputAction.done,
                onSubmit: (text) {
                  print('Entered pin is $text');
                },
                onChange: (text) {
                  print('Enter on change pin is $text');
                },
                onCodeChanged: (code) {
                  print('onCodeChanged  is $code');
                },
                otpPinFieldStyle: OtpPinFieldStyle(
                  showHintText: false,

                  defaultFieldBorderColor:
                      ColorExtension.placeholder.withValues(alpha: 0.25),

                  /// border color for active/focused Otp_Pin_Field
                  activeFieldBorderColor:
                      ColorExtension.placeholder.withValues(alpha: 0.25),

                  /// Background Color for inactive/unfocused Otp_Pin_Field
                  defaultFieldBackgroundColor:
                      ColorExtension.placeholder.withValues(alpha: 0.25),

                  /// Background Color for active/focused Otp_Pin_Field
                  activeFieldBackgroundColor:
                      ColorExtension.placeholder.withValues(alpha: 0.25),
                ),
                maxLength: 4,
                showCursor: true,
                cursorColor: ColorExtension.placeholder,
                showCustomKeyboard: false,
                cursorWidth: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                otpPinFieldDecoration:
                    OtpPinFieldDecoration.defaultPinBoxDecoration,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
              title: 'Verify OTP',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPasswordScreen(),
                  ),
                );
              },
              type: ButtonType.backgroundPrimary,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did not receive the OTP? ',
                  style: TextStyle(
                    color: ColorExtension.secondaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Resend it',
                    style: TextStyle(
                      color: ColorExtension.primaryBg,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                    ),
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
