class Recipe {
  String label;
  String imageUrl;

  // adding ingredients
int servings;
List<Ingredients> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/images/images_5.jpg',
      4, 
      [
        Ingredients(1, 'box', 'Spaghetti'),
        Ingredients(4, '', 'Frozen Meatballs'),
        Ingredients(0.5, 'jar', 'sauce'),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/images/images_4.jpg',
      3,
      [
        Ingredients(1, 'can', 'Tomato Soup'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/images/images_3.jpg',
      1,
      [
        Ingredients(2, 'slices', 'Cheese'),
        Ingredients(2, 'slices', 'Bread'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/images/images_2.jpg',
      2,
      [
        Ingredients(4, 'cups', 'flour'),
        Ingredients(2, 'cups', 'sugar'),
        Ingredients(0.5, 'cups', 'chocolate chips'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/images/images_1.jpg',
      1, 
      [
        Ingredients(4, 'oz', 'nachos'),
        Ingredients(3, 'oz', 'taco meat'),
        Ingredients(0.5, 'cup', 'cheese'),
        Ingredients(0.25, 'cup', 'chopped tomatoes'),
      ],
    ),
  ];

}

class Ingredients {
  double quantity;
  String measure;
  String name;

  Ingredients(
    this.quantity,
    this.measure,
    this.name,
  );
}
