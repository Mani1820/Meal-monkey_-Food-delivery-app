import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/popular_restaurants_data.dart';
import 'package:meal_monkey/common/color_entension.dart';

class PopularRestaurantBuilder extends StatefulWidget {
  const PopularRestaurantBuilder({super.key});

  @override
  State<PopularRestaurantBuilder> createState() =>
      _PopularRestaurantBuilderState();
}

class _PopularRestaurantBuilderState extends State<PopularRestaurantBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: popularRestaurants.length,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Container(
                  color: Colors.amber,
                  height: 250,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          popularRestaurants.elementAt(index).image,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 65,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(137, 137, 137, 0.726),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Text(
                            popularRestaurants.elementAt(index).title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Metropolis',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorExtension.primaryBg,
                                size: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                popularRestaurants
                                    .elementAt(index)
                                    .rating
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Metropolis',
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                ' (${popularRestaurants.elementAt(index).restaurantType})',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Metropolis',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                popularRestaurants.elementAt(index).foodType,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Metropolis',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
