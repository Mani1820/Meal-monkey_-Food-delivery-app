import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/menu_items_data.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.6,
          width: size.width * 0.22,
          margin: const EdgeInsets.only(top: 220),
          decoration: BoxDecoration(
            color: ColorExtension.primaryBg,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: ColorExtension.primaryText),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RoundedTextField(
                hintText: 'Search for food',
                prefixIcon: Icon(Icons.search),
                controller: TextEditingController(),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 60, right: 20, bottom: 20),
                        height: size.height * 0.11,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 135, 135, 135),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            height: size.height * 0.08,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: NetworkImage(menuItems[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuItems[index].title,
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: ColorExtension.primaryText),
                                ),
                                Text(
                                  menuItems[index].itemCount,
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: ColorExtension.secondaryText),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 197, 197, 197),
                                  spreadRadius: 2,
                                  blurRadius: 6,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: ColorExtension.primaryBg,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
