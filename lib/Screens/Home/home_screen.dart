import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/catagory_builder.dart';
import 'package:meal_monkey/common_widget/most_popular_builder.dart';
import 'package:meal_monkey/common_widget/popular_restaurant_builder.dart';
import 'package:meal_monkey/common_widget/recent_orders_builder.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';
import 'package:meal_monkey/common_widget/view_all_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 19.0, vertical: 20),
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
              padding: const EdgeInsets.symmetric(horizontal: 0),
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
              height: 20,
            ),
            SizedBox(
              height: 120,
              child: CatagoryBuilder(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ViewAllRow(title: 'Popular Restaurants'),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 1150,
              child: PopularRestaurantBuilder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ViewAllRow(title: 'Most Popular'),
            ),
            SizedBox(height: 205, child: MostPopularBuilder()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ViewAllRow(title: 'Recent Orders'),
            ),
            SizedBox(
              height: 450,
              child: RecentOrdersBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
