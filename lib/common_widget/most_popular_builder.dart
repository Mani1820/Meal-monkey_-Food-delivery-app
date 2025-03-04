import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/most_popular_data.dart';
import 'package:meal_monkey/common/color_entension.dart';

class MostPopularBuilder extends StatefulWidget {
  const MostPopularBuilder({super.key});

  @override
  State<MostPopularBuilder> createState() => _MostPopularBuilderState();
}

class _MostPopularBuilderState extends State<MostPopularBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: mostPopular.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAlias,
                    child: Image(
                      image: NetworkImage(
                        mostPopular.elementAt(index).image,
                      ),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    mostPopular.elementAt(index).title,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      color: ColorExtension.primaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: ColorExtension.primaryBg,
                      ),
                      Text(
                        mostPopular.elementAt(index).rating.toString(),
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: ColorExtension.primaryBg,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        mostPopular.elementAt(index).restaurantType,
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: ColorExtension.primaryText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' -',
                        style: TextStyle(
                          color: ColorExtension.primaryBg,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        mostPopular.elementAt(index).foodType,
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          color: ColorExtension.primaryText,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
