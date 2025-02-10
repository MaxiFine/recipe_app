class Recipe {
  String label;
  String imageUrl;

  Recipe(
    this.label,
    this.imageUrl,
  );

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/images/images_5.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/images/images_4.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/images/images_3.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/images/images_2.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/images/images_1.jpg',
    ),
  ];

}
