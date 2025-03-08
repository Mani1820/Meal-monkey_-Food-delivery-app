import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/recenr_orders_data.dart';
import 'package:meal_monkey/common/color_entension.dart';

class RecentOrdersBuilder extends StatefulWidget {
  const RecentOrdersBuilder({super.key});

  @override
  State<RecentOrdersBuilder> createState() => _RecentOrdersBuilderState();
}

class _RecentOrdersBuilderState extends State<RecentOrdersBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: recentOrders.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(recentOrders.elementAt(index).image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recentOrders.elementAt(index).title,
                      style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: ColorExtension.primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 13,
                          color: ColorExtension.primaryBg,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          recentOrders.elementAt(index).rating,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              color: ColorExtension.primaryBg,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          recentOrders.elementAt(index).restaurantType,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              color: ColorExtension.secondaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(' -  '),
                        Text(
                          recentOrders.elementAt(index).foodType,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              color: ColorExtension.secondaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
