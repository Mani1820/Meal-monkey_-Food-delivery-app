import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/popular_restaurant_builder.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(children: [
                  Text(
                    'Latest Offers',
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
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  textAlign: TextAlign.left,
                  'Find the latest offers from our\nrestaurants and get special discounts on your favorite dishes!',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorExtension.secondaryText,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 180,
                  decoration: BoxDecoration(
                    color: ColorExtension.primaryBg,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Text(
                    'Check All Offers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 1100,
                child: PopularRestaurantBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
