import 'package:flutter/material.dart';

class WelcomeScreenModel {
  const WelcomeScreenModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final Image image;
}
