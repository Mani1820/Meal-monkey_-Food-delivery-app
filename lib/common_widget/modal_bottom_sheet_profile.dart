import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class ModalBottomSheetProfile extends StatefulWidget {
  const ModalBottomSheetProfile({super.key});

  @override
  State<ModalBottomSheetProfile> createState() =>
      _ModalBottomSheetProfileState();
}

class _ModalBottomSheetProfileState extends State<ModalBottomSheetProfile> {
  void onSave() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      height: media.height * 0.6,
      width: media.width * 1,
      child: Column(
        children: [
          SizedBox(
            height: media.height * 0.05,
          ),
          RoundedTextField(
            hintText: 'Name',
            prefixIcon: Icon(
              Icons.person,
            ),
          ),
          SizedBox(
            height: media.height * 0.05,
          ),
          RoundedTextField(
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.email,
            ),
          ),
          SizedBox(
            height: media.height * 0.05,
          ),
          RoundedTextField(
            hintText: 'phone number',
            prefixIcon: Icon(
              Icons.phone_android,
            ),
          ),
          SizedBox(
            height: media.height * 0.05,
          ),
          RoundedButton(
            title: 'Save',
            type: ButtonType.backgroundPrimary,
            onPressed: onSave,
          ),
        ],
      ),
    );
  }
}
