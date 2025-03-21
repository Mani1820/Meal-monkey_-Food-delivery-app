class AllFoodsModel {
  const AllFoodsModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.foodType,
    required this.rating,
    this.reviewCount,
    this.ingredients,
    this.nutrition,
    required this.restaurantName,
    required this.isPromoted,
  });

  final String id;
  final String name;
  final double price;
  final String image;
  final String description;
  final String foodType;
  final double rating;
  final int? reviewCount;
  final String? ingredients;
  final String? nutrition;
  final String restaurantName;
  final bool isPromoted;
}
