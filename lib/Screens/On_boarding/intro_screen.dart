import 'package:flutter/material.dart';
import 'package:meal_monkey/Data/intro_screen_data.dart';
import 'package:meal_monkey/Screens/On_boarding/login_screen.dart';
import 'package:meal_monkey/common/color_entension.dart';
import 'package:meal_monkey/common_widget/rounded_button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introElementList = introElements.length;
  int selectedIndex = 0;
  final controller = PageController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        selectedIndex = controller.page?.floor() ?? 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: introElementList,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: media.width * 0.65,
                    child: Image(
                      image: introElements.elementAt(index).image.image,
                      fit: BoxFit.contain,
                      width: media.width * 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    introElements.elementAt(index).title,
                    style: TextStyle(
                      color: ColorExtension.primaryText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    introElements.elementAt(index).subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorExtension.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.15,
                  ),
                ],
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  introElementList,
                  (index) => Container(
                    margin: const EdgeInsets.all(5),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? ColorExtension.primaryBg
                          : ColorExtension.placeholder,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: media.height * 0.08,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: RoundedButton(
                  title: selectedIndex == introElementList - 1
                      ? 'Get Started'
                      : 'Next',
                  onPressed: () {
                    if (selectedIndex == introElementList - 1) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    }
                    controller.animateToPage(selectedIndex + 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  type: ButtonType.backgroundPrimary,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
