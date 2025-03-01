import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/popular_restaurants_data.dart';

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
      scrollDirection: Axis.vertical,
      itemCount: popularRestaurants.length,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
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
                )),
          ),
        );
      },
    );
  }
}
