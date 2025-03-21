import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/all_foods_data.dart';
import 'package:meal_monkey/Screens/Menu/food_details_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_text_field.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final List allFood =
        allFoods.where((element) => element.foodType == widget.title).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: RoundedTextField(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  controller: TextEditingController(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 1000,
                child: ListView.builder(
                  itemCount: allFood.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FoodDetailsScreen(
                            image: allFoods[index].image,
                            title: allFoods[index].name,
                            rating: allFoods[index].rating,
                            description: allFoods[index].description,
                            price: allFoods[index].price,
                          ),
                        )),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(107, 255, 255, 255),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: size.height * 0.31,
                              width: size.width * 1,
                              child: Hero(
                                tag: 'foodImage$index',
                                flightShuttleBuilder: (flightContext,
                                    animation,
                                    flightDirection,
                                    fromHeroContext,
                                    toHeroContext) {
                                  return AnimatedBuilder(
                                    animation: animation,
                                    builder: (context, child) {
                                      return Transform.scale(
                                        scale: animation.value,
                                        child: child,
                                      );
                                    },
                                    child: toHeroContext.widget,
                                  );
                                },
                                child: Image.asset(
                                  allFood[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: size.height * 0.1,
                                width: size.width * 1,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(150, 98, 98, 98),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        allFood[index].name,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Metropolis',
                                          color: ColorExtension.primaryBg,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        allFood[index].description,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Metropolis',
                                            color: const Color.fromARGB(
                                                227, 239, 239, 239)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            '\$${allFood[index].price}',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Metropolis',
                                                color: Colors.white),
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color:
                                                      ColorExtension.primaryBg,
                                                  size: 15,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  allFood[index]
                                                      .rating
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'Metropolis',
                                                      color: Colors.white),
                                                ),
                                              ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
