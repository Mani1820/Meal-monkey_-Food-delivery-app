import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/profile_element.dart';
import 'package:meal_monkey/common_widget/profile_element2.dart';

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
          SizedBox(
            height: 10,
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
          ),
          SizedBox(
            height: 20,
          ),
          ProfileElement(title: 'Name', subtitle: 'John Doe'),
          SizedBox(
            height: 10,
          ),
          ProfileElement(title: 'Email', subtitle: 'sE5Qz@example.com'),
          SizedBox(
            height: 10,
          ),
          ProfileElement(title: 'Phone', subtitle: '1234567890'),
          SizedBox(
            height: 20,
          ),
          ProfileElement2(
            icon: Icons.lock,
            text: 'Change Password',
          ),
          SizedBox(
            height: 10,
          ),
          ProfileElement2(
            icon: Icons.price_check_outlined,
            text: 'Promotions',
          ),
          SizedBox(
            height: 10,
          ),
          ProfileElement2(
            icon: Icons.language,
            text: 'Language',
          ),
          SizedBox(
            height: 10,
          ),
          ProfileElement2(
            icon: Icons.person_add_alt_rounded,
            text: 'refer a friend',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 30,
                  color: const Color.fromARGB(255, 224, 18, 3),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Logout',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 224, 18, 3)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
