import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/catagory_builder.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                  child: SizedBox(
                height: 20,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Good morning User!',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: ColorExtension.primaryText),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 25,
                    ),
                    splashColor: Colors.transparent,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivering to',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorExtension.primaryText,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorExtension.primaryText,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: RoundedTextField(
                  hintText: 'Search for food',
                  controller: TextEditingController(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorExtension.secondaryText,
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              CatagoryBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
