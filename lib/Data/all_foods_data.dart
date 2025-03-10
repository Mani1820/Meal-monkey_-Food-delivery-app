import 'package:meal_monkey/Models/all_foods_model.dart';

final List<AllFoodsModel> allFoods = [
  AllFoodsModel(
    id: '1',
    name: 'Chocolate Cake',
    description: 'Rich and creamy chocolate cake',
    price: 4.99,
    image: 'https://example.com/images/chocolate_cake.jpg',
    foodType: 'Dessert',
    rating: 4.5,
    reviewCount: 10,
    ingredients: 'Flour, sugar, cocoa powder, eggs, milk, butter',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '2',
    name: 'Ice Cream Sundae',
    description: 'Vanilla ice cream with chocolate syrup and nuts',
    price: 3.99,
    image: 'https://example.com/images/ice_cream_sundae.jpg',
    foodType: 'Dessert',
    rating: 4.0,
    reviewCount: 8,
    ingredients: 'Vanilla ice cream, chocolate syrup, nuts, whipped cream',
    nutrition: 'Calories: 200, Protein: 5g, Carbs: 25g, Fat: 10g',
    restaurantName: 'Ice Cream Parlor',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '3',
    name: 'Apple Pie',
    description: 'Classic apple pie with a flaky crust',
    price: 5.49,
    image: 'https://example.com/images/apple_pie.jpg',
    foodType: 'Dessert',
    rating: 4.2,
    reviewCount: 12,
    ingredients: 'Apples, flour, sugar, cinnamon, eggs, butter',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '4',
    name: 'Cheesecake',
    description: 'Creamy cheesecake with a graham cracker crust',
    price: 6.99,
    image: 'https://example.com/images/cheesecake.jpg',
    foodType: 'Dessert',
    rating: 4.8,
    reviewCount: 15,
    ingredients: 'Graham crackers, cream cheese, sugar, eggs, vanilla extract',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '5',
    name: 'Brownie',
    description: 'Fudgy brownie with a rich chocolate flavor',
    price: 2.99,
    image: 'https://example.com/images/brownie.jpg',
    foodType: 'Dessert',
    rating: 4.3,
    reviewCount: 9,
    ingredients: 'Flour, sugar, cocoa powder, eggs, butter, chocolate chips',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '6',
    name: 'Lemon Tart',
    description: 'Tangy lemon tart with a buttery crust',
    price: 4.49,
    image: 'https://example.com/images/lemon_tart.jpg',
    foodType: 'Dessert',
    rating: 4.6,
    reviewCount: 11,
    ingredients: 'Flour, sugar, lemon juice, eggs, butter, lemon zest',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '7',
    name: 'Tiramisu',
    description: 'Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cheese',
    price: 5.99,
    image: 'https://example.com/images/tiramisu.jpg',
    foodType: 'Dessert',
    rating: 4.7,
    reviewCount: 14,
    ingredients: 'Coffee, ladyfingers, mascarpone cheese, eggs, sugar, cocoa powder',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery', 
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '8',
    name: 'Pumpkin Pie',
    description: 'Spiced pumpkin pie with a flaky crust',
    price: 5.49,
    image: 'https://example.com/images/pumpkin_pie.jpg',
    foodType: 'Dessert',
    rating: 4.4,
    reviewCount: 13,
    ingredients: 'Pumpkin puree, sugar, eggs, cinnamon, nutmeg, cloves',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '9',
    name: 'Chocolate Chip Cookies',
    description: 'Soft and chewy chocolate chip cookies',
    price: 3.49,
    image: 'https://example.com/images/chocolate_chip_cookies.jpg',
    foodType: 'Dessert',
    rating: 4.1,
    reviewCount: 10,
    ingredients: 'Flour, sugar, butter, eggs, chocolate chips, vanilla extract',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '10',
    name: 'Cupcakes',
    description: 'Assorted cupcakes with buttercream frosting',
    price: 3.99,
    image: 'https://example.com/images/cupcakes.jpg',
    foodType: 'Dessert',
    rating: 4.9,
    reviewCount: 16,
    ingredients: 'Flour, sugar, butter, eggs, milk, vanilla extract',
    nutrition: 'Calories: 350, Protein: 5g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Sweet Treats Bakery',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '11',
    name: 'Cappuccino',
    description: 'Hot coffee with steamed milk foam',
    price: 3.99,
    image: 'https://example.com/images/cappuccino.jpg',
    foodType: 'Beverage',
    rating: 4.5,
    reviewCount: 20,
    ingredients: 'Coffee, milk, sugar',
    nutrition: 'Calories: 150, Protein: 6g, Carbs: 12g, Fat: 7g',
    restaurantName: 'Coffee House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '12',
    name: 'Green Tea',
    description: 'Refreshing green tea',
    price: 2.49,
    image: 'https://example.com/images/green_tea.jpg',
    foodType: 'Beverage',
    rating: 4.3,
    reviewCount: 15,
    ingredients: 'Green tea leaves, water',
    nutrition: 'Calories: 0, Protein: 0g, Carbs: 0g, Fat: 0g',
    restaurantName: 'Tea Time',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '13',
    name: 'Lemonade',
    description: 'Cool and tangy lemonade',
    price: 2.99,
    image: 'https://example.com/images/lemonade.jpg',
    foodType: 'Beverage',
    rating: 4.6,
    reviewCount: 18,
    ingredients: 'Lemon, water, sugar',
    nutrition: 'Calories: 120, Protein: 0g, Carbs: 30g, Fat: 0g',
    restaurantName: 'Refreshment Stand',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '14',
    name: 'Smoothie',
    description: 'Mixed fruit smoothie',
    price: 4.99,
    image: 'https://example.com/images/smoothie.jpg',
    foodType: 'Beverage',
    rating: 4.7,
    reviewCount: 22,
    ingredients: 'Mixed fruits, yogurt, honey',
    nutrition: 'Calories: 200, Protein: 5g, Carbs: 40g, Fat: 2g',
    restaurantName: 'Smoothie Bar',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '15',
    name: 'Iced Coffee',
    description: 'Chilled coffee with ice',
    price: 3.49,
    image: 'https://example.com/images/iced_coffee.jpg',
    foodType: 'Beverage',
    rating: 4.4,
    reviewCount: 17,
    ingredients: 'Coffee, ice, milk, sugar',
    nutrition: 'Calories: 100, Protein: 2g, Carbs: 15g, Fat: 3g',
    restaurantName: 'Coffee House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '16',
    name: 'Hot Chocolate',
    description: 'Warm and creamy hot chocolate',
    price: 3.99,
    image: 'https://example.com/images/hot_chocolate.jpg',
    foodType: 'Beverage',
    rating: 4.8,
    reviewCount: 25,
    ingredients: 'Cocoa powder, milk, sugar',
    nutrition: 'Calories: 200, Protein: 6g, Carbs: 30g, Fat: 8g',
    restaurantName: 'Coffee House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '17',
    name: 'Milkshake',
    description: 'Thick and creamy milkshake',
    price: 4.49,
    image: 'https://example.com/images/milkshake.jpg',
    foodType: 'Beverage',
    rating: 4.5,
    reviewCount: 19,
    ingredients: 'Milk, ice cream, flavoring',
    nutrition: 'Calories: 300, Protein: 8g, Carbs: 40g, Fat: 12g',
    restaurantName: 'Diner',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '18',
    name: 'Orange Juice',
    description: 'Freshly squeezed orange juice',
    price: 3.49,
    image: 'https://example.com/images/orange_juice.jpg',
    foodType: 'Beverage',
    rating: 4.6,
    reviewCount: 21,
    ingredients: 'Oranges',
    nutrition: 'Calories: 110, Protein: 2g, Carbs: 26g, Fat: 0g',
    restaurantName: 'Juice Bar',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '19',
    name: 'Herbal Tea',
    description: 'Calming herbal tea',
    price: 2.99,
    image: 'https://example.com/images/herbal_tea.jpg',
    foodType: 'Beverage',
    rating: 4.4,
    reviewCount: 16,
    ingredients: 'Herbal tea leaves, water',
    nutrition: 'Calories: 0, Protein: 0g, Carbs: 0g, Fat: 0g',
    restaurantName: 'Tea Time',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '20',
    name: 'Latte',
    description: 'Smooth coffee with steamed milk',
    price: 3.99,
    image: 'https://example.com/images/latte.jpg',
    foodType: 'Beverage',
    rating: 4.7,
    reviewCount: 23,
    ingredients: 'Coffee, milk, sugar',
    nutrition: 'Calories: 150, Protein: 6g, Carbs: 12g, Fat: 7g',
    restaurantName: 'Coffee House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '21',
    name: 'Grilled Chicken',
    description: 'Juicy grilled chicken breast with herbs',
    price: 8.99,
    image: 'https://example.com/images/grilled_chicken.jpg',
    foodType: 'Main Dish',
    rating: 4.5,
    reviewCount: 30,
    ingredients: 'Chicken breast, olive oil, herbs, spices',
    nutrition: 'Calories: 250, Protein: 30g, Carbs: 0g, Fat: 10g',
    restaurantName: 'Grill House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '22',
    name: 'Spaghetti Bolognese',
    description: 'Classic spaghetti with rich bolognese sauce',
    price: 10.99,
    image: 'https://example.com/images/spaghetti_bolognese.jpg',
    foodType: 'Main Dish',
    rating: 4.7,
    reviewCount: 25,
    ingredients: 'Spaghetti, ground beef, tomatoes, onions, garlic, herbs',
    nutrition: 'Calories: 400, Protein: 20g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Italian Bistro',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '23',
    name: 'Beef Steak',
    description: 'Tender beef steak with garlic butter',
    price: 15.99,
    image: 'https://example.com/images/beef_steak.jpg',
    foodType: 'Main Dish',
    rating: 4.8,
    reviewCount: 40,
    ingredients: 'Beef steak, garlic, butter, herbs, spices',
    nutrition: 'Calories: 500, Protein: 40g, Carbs: 0g, Fat: 35g',
    restaurantName: 'Steak House',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '24',
    name: 'Vegetable Stir Fry',
    description: 'Mixed vegetables stir-fried with soy sauce',
    price: 7.99,
    image: 'https://example.com/images/vegetable_stir_fry.jpg',
    foodType: 'Main Dish',
    rating: 4.3,
    reviewCount: 20,
    ingredients: 'Mixed vegetables, soy sauce, garlic, ginger',
    nutrition: 'Calories: 200, Protein: 5g, Carbs: 30g, Fat: 5g',
    restaurantName: 'Asian Cuisine',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '25',
    name: 'Salmon Fillet',
    description: 'Grilled salmon fillet with lemon butter sauce',
    price: 12.99,
    image: 'https://example.com/images/salmon_fillet.jpg',
    foodType: 'Main Dish',
    rating: 4.6,
    reviewCount: 35,
    ingredients: 'Salmon fillet, lemon, butter, herbs',
    nutrition: 'Calories: 350, Protein: 25g, Carbs: 0g, Fat: 25g',
    restaurantName: 'Seafood Delight',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '26',
    name: 'Chicken Alfredo',
    description: 'Creamy chicken alfredo pasta',
    price: 11.99,
    image: 'https://example.com/images/chicken_alfredo.jpg',
    foodType: 'Main Dish',
    rating: 4.7,
    reviewCount: 28,
    ingredients: 'Pasta, chicken, cream, parmesan cheese, garlic',
    nutrition: 'Calories: 600, Protein: 30g, Carbs: 60g, Fat: 25g',
    restaurantName: 'Italian Bistro',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '27',
    name: 'Beef Tacos',
    description: 'Soft tacos filled with seasoned beef and toppings',
    price: 9.99,
    image: 'https://example.com/images/beef_tacos.jpg',
    foodType: 'Main Dish',
    rating: 4.5,
    reviewCount: 22,
    ingredients: 'Tortillas, ground beef, lettuce, cheese, salsa',
    nutrition: 'Calories: 300, Protein: 20g, Carbs: 30g, Fat: 15g',
    restaurantName: 'Mexican Grill',
    isPromoted: true,
  ),
  AllFoodsModel(
    id: '28',
    name: 'Vegetarian Pizza',
    description: 'Pizza topped with a variety of fresh vegetables',
    price: 13.99,
    image: 'https://example.com/images/vegetarian_pizza.jpg',
    foodType: 'Main Dish',
    rating: 4.6,
    reviewCount: 27,
    ingredients: 'Pizza dough, tomato sauce, cheese, mixed vegetables',
    nutrition: 'Calories: 400, Protein: 15g, Carbs: 50g, Fat: 15g',
    restaurantName: 'Pizza Place',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '29',
    name: 'Shrimp Scampi',
    description: 'Shrimp cooked in garlic butter sauce',
    price: 14.99,
    image: 'https://example.com/images/shrimp_scampi.jpg',
    foodType: 'Main Dish',
    rating: 4.7,
    reviewCount: 32,
    ingredients: 'Shrimp, garlic, butter, lemon, parsley',
    nutrition: 'Calories: 300, Protein: 25g, Carbs: 5g, Fat: 20g',
    restaurantName: 'Seafood Delight',
    isPromoted: false,
  ),
  AllFoodsModel(
    id: '30',
    name: 'BBQ Ribs',
    description: 'Tender ribs with smoky BBQ sauce',
    price: 16.99,
    image: 'https://example.com/images/bbq_ribs.jpg',
    foodType: 'Main Dish',
    rating: 4.8,
    reviewCount: 38,
    ingredients: 'Pork ribs, BBQ sauce, spices',
    nutrition: 'Calories: 600, Protein: 40g, Carbs: 20g, Fat: 40g',
    restaurantName: 'BBQ Joint',
    isPromoted: false,
  ),

];