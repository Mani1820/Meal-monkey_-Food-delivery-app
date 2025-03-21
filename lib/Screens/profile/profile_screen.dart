import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: ColorExtension.primaryText,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: ColorExtension.primaryText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('Assets/images/profile_pic.webp'),
            radius: 50,
            backgroundColor: ColorExtension.placeholder,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(Icons.edit, color: ColorExtension.primaryBg),
              Text(
                'Edit Profile',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: ColorExtension.primaryBg,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
