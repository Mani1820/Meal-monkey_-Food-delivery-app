class PopularRestaurantsModel {
  const PopularRestaurantsModel({
    required this.image,
    required this.title,
    required this.rating,
    required this.restaurantType,
    required this.foodType,
  });
  final String image;
  final String title;
  final double rating;
  final String restaurantType;
  final String foodType;
}