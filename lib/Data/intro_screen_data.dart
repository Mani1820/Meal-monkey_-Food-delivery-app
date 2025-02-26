import 'package:flutter/material.dart';
import 'package:meal_monkey/Models/welcome_screen_model.dart';

final Set<WelcomeScreenModel> introElements = {
  WelcomeScreenModel(
    title: 'Find Food You Love',
    subtitle:
        'Discover the best foods over 1000 restaurants and fast delivery to your home',
    image: Image.asset('Assets/images/page_view_1.png'),
  ),
  WelcomeScreenModel(
    title: 'Fast Delivery',
    subtitle: 'Fast food delivery to your home, office wherever you are',
    image: Image.asset('Assets/images/on_boarding_2.png'),
  ),
  WelcomeScreenModel(
    title: 'Live Tracking',
    subtitle:
        'Real time tracking of your food on the map, so you know where it is at all times',
    image: Image.asset('Assets/images/page_view_3.png'),
  ),
};
