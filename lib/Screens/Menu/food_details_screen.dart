import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/small_rounded_button.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({
    required this.image,
    required this.title,
    required this.rating,
    required this.description,
    required this.price,
    super.key,
  });
  final String image;
  final String title;
  final double rating;
  final String description;
  final double price;

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int numberOfPortion = 0;
  bool isFav = false;

  void onClickFav() {
    if (isFav == false) {
      setState(() {
        isFav = true;
      });
    }
    if (isFav == true) {
      setState(() {
        isFav == false;
      });
    }
  }

  void increase() {
    setState(() {
      numberOfPortion++;
    });
  }

  void decrease() {
    setState(() {
      numberOfPortion--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
              tag: widget.image,
              child: Container(
                height: size.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.30,
              ),
              Container(
                height: size.height * 0.70,
                width: size.width * 1,
                padding: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      50,
                    ),
                    topRight: Radius.circular(
                      50,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      spreadRadius: 20,
                      color: const Color.fromARGB(255, 72, 70, 70),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w700,
                        color: ColorExtension.primaryText,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorExtension.primaryBg,
                          size: 15,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '${widget.rating}',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                            color: ColorExtension.primaryText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        color: ColorExtension.primaryText,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w400,
                        color: ColorExtension.secondaryText,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Number of portions',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w600,
                            color: ColorExtension.primaryText,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.15,
                        ),
                        SmallRoundedButton(
                          title: '+',
                          onPressed: increase,
                        ),
                        SmallRoundedButton(
                          title:
                              numberOfPortion <= 0 ? '0' : '$numberOfPortion',
                          type: ButtonType.textPrimary,
                        ),
                        SmallRoundedButton(
                          title: '-',
                          onPressed: decrease,
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: size.height * 0.1,
            child: Container(
              height: size.height * 0.26,
              width: size.width * 0.28,
              decoration: BoxDecoration(
                color: ColorExtension.primaryBg,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.07,
            bottom: size.height * 0.55,
            child: Column(
              children: [
                InkWell(
                  onTap: onClickFav,
                  child: Image(
                    image: AssetImage(
                      isFav
                          ? 'Assets/images/favorites_btn.png'
                          : 'Assets/images/favorites_btn_2.png',
                    ),
                    height: size.height * 0.1,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  '\$.${widget.price}',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    color: ColorExtension.primaryText,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '  /per portion',
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      color: ColorExtension.secondaryText,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.16,
            right: size.width * 0.2,
            child: Container(
              height: size.height * 0.18,
              width: size.width * 0.58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(
                    50,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 20,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  Text(
                    'Total price',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        color: ColorExtension.primaryText,
                        fontSize: 15),
                  ),
                  Text(
                    '\$. ${widget.price}',
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                        color: ColorExtension.primaryText,
                        fontSize: 25),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 27),
                    height: size.height * 0.038,
                    decoration: BoxDecoration(
                      color: ColorExtension.primaryBg,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          30,
                        ),
                        right: Radius.circular(
                          30,
                        ),
                      ),
                    ),
                    child: Row(
                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.23,
            right: size.width * 0.15,
            child: Container(
              height: size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: ColorExtension.primaryBg,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
