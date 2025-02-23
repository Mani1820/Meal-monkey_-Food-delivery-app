import 'package:flutter/material.dart';
import 'package:meal_monkey/Screens/On_boarding/welcome_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => const WelcomeScreen(),
          ),
        );
      },
    );
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final double height = media.height * 0.30;
    final double picture = media.height * 0.20;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: picture,
          ),
          Center(
            child: Stack(
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: Image(
                    image: AssetImage(
                      'Assets/images/app_logo.png',
                    ),
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Meal ",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Metropolis',
                                color: ColorExtension.primaryBg,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Monkey ",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Metropolis',
                                color: ColorExtension.primaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
