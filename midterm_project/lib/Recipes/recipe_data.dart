class Recipe {
  String imgPath;
  String recipeName;
  int timeCook;
  int servings;
  String shortDesc;
  String recipeDesc;
  List<Ingredients> listIngredients;
  List<String> directions;

  Recipe({
    required this.imgPath,
    required this.recipeName,
    required this.timeCook,
    required this.servings,
    required this.shortDesc,
    required this.recipeDesc,
    required this.listIngredients,
    required this.directions,
  });
}

class Ingredients {
  String ingredientName;
  double amount;
  String measurement;
  String imgPath;

  Ingredients({
    required this.ingredientName,
    required this.amount,
    required this.measurement,
    required this.imgPath,
  });
}

class RecipeUtils {
  static List<Recipe> getRecipeData() {
    return [
      Recipe(
        imgPath: 'assets/images/salad.jpg',
        recipeName: 'All Kale Caesar',
        timeCook: 15,
        servings: 4,
        shortDesc: 'This kale salad recipe is very quick and simple. Pour remaining dressing into a container, cover, and refrigerate up to 2 weeks.',
        recipeDesc: 'Everyone loves a great caesar salad topped with bacon and croutons and we love a fresh kale salad too. Combining the two makes for the most perfect meal or side dish!. This kale salad recipe is very quick and simple. Pour remaining dressing into a container, cover, and refrigerate up to 2 weeks.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Lemon Juice',
            amount: 1/2,
            measurement: 'cup',
            imgPath: 'assets/images/lemon2.png',
          ),
          Ingredients(
            ingredientName: 'Anchovy Fillets',
            amount: 2,
            measurement: '',
            imgPath: 'assets/images/fillets.png',
          ),
          Ingredients(
            ingredientName: 'Garlic',
            amount: 2,
            measurement: '',
            imgPath: 'assets/images/garlic.png',
          ),
          Ingredients(
            ingredientName: 'Dijon Mustard',
            amount: 1/2,
            measurement: 'tsp',
            imgPath: 'assets/images/dijon.png',
          ),
          Ingredients(
            ingredientName: 'Olive Oil',
            amount: 1 / 2,
            measurement: 'cup',
            imgPath: 'assets/images/oliveoil.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1 / 4,
            measurement: 'tsp',
            imgPath: 'assets/images/salt.png',
          ),
          Ingredients(
            ingredientName: 'Black Pepper',
            amount: 1/4,
            measurement: 'tsp',
            imgPath: 'assets/images/pepper.png',
          ),
          Ingredients(
            ingredientName: 'Kale Leaves',
            amount: 6,
            measurement: '',
            imgPath: 'assets/images/kaleleaves.png',
          ),
          Ingredients(
            ingredientName: 'Croutons',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/images/crouton.png',
          ),
          Ingredients(
            ingredientName: 'Parmesan Cheese',
            amount: 1/4,
            measurement: 'cup',
            imgPath: 'assets/images/parmesan.png',
          ),
        ],
        directions: [
          'Combine lemon juice, anchovies, garlic, and mustard in a blender or food processor fitted with a steel blade. Process until thoroughly combined. Pour in olive oil very gradually through the feed tube while machine is running, first 1 tablespoon at a time, then gradually increasing the amount. Season with salt and pepper.',
          'Stack and bunch the kale leaves together on a cutting board and cut across the stack into skinny slivers.',
          'Place the kale, croutons, and Parmesan cheese in the bowl and drizzle with about a 1/4 of the dressing. Toss and taste the salad and add more dressing if desired, then toss again.',
        ],
      ),
      Recipe(
        imgPath: 'assets/images/squashsoup.jpg',
        recipeName: 'Butternut Squash Soup',
        timeCook: 45,
        servings: 6,
        shortDesc: 'A great soup to warm you up in a hurry.',
        recipeDesc: 'A great soup to warm you up in a hurry. Great any time of year. You can play with the volumes of jalapeno and ginger and sour cream, to whatever you like. You can vary the amount of sour cream you add depending on how hot you want the soup to taste.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Butter',
            amount: 2,
            measurement: 'tbsp',
            imgPath: 'assets/images/butter.png',
          ),
          Ingredients(
            ingredientName: 'Onion',
            amount: 1,
            measurement: '',
            imgPath: 'assets/images/onion.png',
          ),
          Ingredients(
            ingredientName: 'Ginger',
            amount: 2,
            measurement: 'tps',
            imgPath: 'assets/images/ginger.png',
          ),
          Ingredients(
            ingredientName: 'Jalapeno Pepper',
            amount: 1,
            measurement: '',
            imgPath: 'assets/images/jalapeno.png',
          ),
          Ingredients(
            ingredientName: 'Butternut Squash',
            amount: 2,
            measurement: 'pounds',
            imgPath: 'assets/images/squash.png',
          ),
          Ingredients(
            ingredientName: 'Chicken Broth',
            amount: 14.5,
            measurement: 'ounce',
            imgPath: 'assets/images/broth.png',
          ),
          Ingredients(
            ingredientName: 'Evaporated Milk',
            amount: 12,
            measurement: 'fluid ounce',
            imgPath: 'assets/images/evaporate.png',
          ),
          Ingredients(
            ingredientName: 'Coconut Milk',
            amount: 1/2,
            measurement: 'cup',
            imgPath: 'assets/images/coconutmilk.png',
          ),
          Ingredients(
            ingredientName: 'White Sugar',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/images/whitesugar.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1/2,
            measurement: 'tbsp',
            imgPath: 'assets/images/salt.png',
          ),
          Ingredients(
            ingredientName: 'Black Pepper',
            amount: 1/2,
            measurement: 'tbsp',
            imgPath: 'assets/images/pepper.png',
          ),
          Ingredients(
            ingredientName: 'Sour Cream',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/images/sourcream.png',
          ),
          Ingredients(
            ingredientName: 'Thyme',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/images/thyme.png',
          ),
        ],
        directions: [
          'Melt the butter in a large pot over medium heat. Stir in the onion, ginger, and jalapeno pepper; cook and stir until the onion has softened and turned translucent, about 7 minutes. Add the butternut squash and chicken broth, and bring to a boil over high heat. Reduce heat to medium-low, cover, and simmer until the squash is tender, about 30 minutes.',
          'Stir in the evaporated milk, coconut milk, sugar, salt and pepper. Cook and stir 5 minutes more. Pour the soup into a blender, filling the pitcher no more than halfway full. Hold down the lid of the blender with a folded kitchen towel, and carefully start the blender, using a few quick pulses to get the soup moving before leaving it on to puree. Puree in batches until smooth, and pour into a clean pot. Alternately, you can use a stick blender and puree the soup right in the cooking pot. Ladle into bowls, and garnish with sour cream and thyme to serve.',
        ],
      ),
      Recipe(
        imgPath: 'assets/images/spaghetti.jpg',
        recipeName: 'Chunky Italian Spaghetti Sauce',
        timeCook: 45,
        servings: 6,
        shortDesc: 'Zesty traditional spaghetti sauce.',
        recipeDesc: 'Zesty traditional spaghetti sauce. This is delicious to simmer meatballs in - add cooked meatballs in during the last 15 minutes of simmering.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Tomatoes',
            amount: 2,
            measurement: 'cans',
            imgPath: 'assets/images/tomatoes.png',
          ),
          Ingredients(
            ingredientName: 'Tomato Sauce',
            amount: 2,
            measurement: 'cans',
            imgPath: 'assets/images/sauce.png',
          ),
          Ingredients(
            ingredientName: 'Garlic Powder',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/images/garlicpowder.png',
          ),
          Ingredients(
            ingredientName: 'White Sugar',
            amount: 2,
            measurement: 'tsp',
            imgPath: 'assets/images/whitesugar.png',
          ),
          Ingredients(
            ingredientName: 'Dried Parsley',
            amount: 2,
            measurement: 'tsp',
            imgPath: 'assets/images/parsley.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1/2,
            measurement: 'tsp',
            imgPath: 'assets/images/salt.png',
          ),
          Ingredients(
            ingredientName: 'Dried Oregano',
            amount: 1/4,
            measurement: 'tsp',
            imgPath: 'assets/images/oregano.png',
          ),
          Ingredients(
            ingredientName: 'Dried Basil',
            amount: 1/4,
            measurement: 'tsp',
            imgPath: 'assets/images/basil.png',
          ),
          Ingredients(
            ingredientName: 'Black Pepper',
            amount: 1/4,
            measurement: 'tsp',
            imgPath: 'assets/images/pepper.png',
          ),
        ],
        directions: [
          'Combine diced tomatoes, tomato sauce, garlic powder, sugar, parsley, salt, oregano, basil, and pepper in a saucepan; bring to a boil',
          'Lower heat to medium-low, cover saucepan, and simmer until flavors blend, about 30 minutes.',
        ],
      ),
      Recipe(
        imgPath: 'assets/images/potatostew.jpeg',
        recipeName: 'Spicy Chicken and Sweet Potato Stew',
        timeCook: 25,
        servings: 6,
        shortDesc: 'With flavors reminiscent of Morocco and Mexico, this easy yet richly-flavored stew contains loads of chicken, vegetables, and some surprising spices! If desired, pass lime wedges to squeeze over individual servings.',
        recipeDesc: 'With flavors reminiscent of Morocco and Mexico, this easy yet richly-flavored stew contains loads of chicken, vegetables, and some surprising spices! If desired, pass lime wedges to squeeze over individual servings.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Olive Oil',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/images/oliveoil.png',
          ),
          Ingredients(
            ingredientName: 'Onion',
            amount: 1,
            measurement: '',
            imgPath: 'assets/images/onion.png',
          ),
          Ingredients(
            ingredientName: 'Garlic',
            amount: 4,
            measurement: '',
            imgPath: 'assets/images/garlic.png',
          ),
          Ingredients(
            ingredientName: 'Diced Tomatoes',
            amount: 1,
            measurement: 'can',
            imgPath: 'assets/images/tomatoes.png',
          ),
          Ingredients(
            ingredientName: 'Dried Oregano',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/images/oregano.png',
          ),
          Ingredients(
            ingredientName: 'Sweet Potato',
            amount: 1,
            measurement: '',
            imgPath: 'assets/images/sweet.png',
          ),
          Ingredients(
              ingredientName: 'Orange Bell Pepper',
              amount: 1,
              measurement: '',
              imgPath: 'assets/images/bellpepper.png',
          ),
          Ingredients(
            ingredientName: 'Chicken Breast',
            amount: 1,
            measurement: '',
            imgPath: 'assets/images/chicken.png',
          ),
        ],
        directions: [
         'Heat olive oil in a large pot over medium heat. Stir in onion and garlic; cook and stir until the onion has softened and turned translucent, about 5 minutes. Stir in sweet potato, bell pepper, chicken, tomatoes, and 2 cups of water. Season with salt, chili powder, cumin, oregano, cocoa powder, cinnamon, and red pepper flakes. Increase heat to medium-high and bring to a boil. Dissolve flour in 2 tablespoons water, and stir in to boiling stew. Reduce heat to medium-low, cover, and simmer until the potatoes are tender but not mushy, 10 to 20 minutes. Stir the stew occasionally to keep it from sticking.',
         'Once the potatoes are done, stir in corn and kidney beans. Cook a few minutes until hot, then stir in cilantro before serving.',
        ],
      ),
      Recipe(
        imgPath: 'assets/images/toast.jpg',
        recipeName: 'Fluffy French Toast',
        timeCook: 20,
        servings: 12,
        shortDesc: 'This French toast recipe is different because it uses flour. I have given it to some friends and they\'ve all liked it better than the French toast they usually make!',
        recipeDesc: 'This French toast recipe is different because it uses flour. I have given it to some friends and they\'ve all liked it better than the French toast they usually make!',
        listIngredients: [
          Ingredients(
            ingredientName: 'All-Purpose Flour',
            amount: 1/4,
            measurement: 'cup',
            imgPath: 'assets/images/flour.png',
          ),
          Ingredients(
            ingredientName: 'Milk',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/images/milk.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1,
            measurement: 'pinch',
            imgPath: 'assets/images/salt.png',
          ),
          Ingredients(
            ingredientName: 'Eggs',
            amount: 3,
            measurement: 'oz',
            imgPath: 'assets/images/eggs.png',
          ),
          Ingredients(
            ingredientName: 'Ground Cinnamon',
            amount: 1 / 2,
            measurement: 'tsp',
            imgPath: 'assets/images/cinammon.png',
          ),
          Ingredients(
            ingredientName: 'Vanilla Extract',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/images/vanilla.png',
          ),
          Ingredients(
            ingredientName: 'White Sugar',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/images/whitesugar.png',
          ),
          Ingredients(
            ingredientName: 'Slice Bread',
            amount: 12,
            measurement: 'tbsp',
            imgPath: 'assets/images/slice.png',
          ),
        ],
        directions: [
          'Measure flour into a large mixing bowl. Slowly whisk in the milk. Whisk in the salt, eggs, cinnamon, vanilla extract and sugar until smooth.',
          'Heat a lightly oiled griddle or frying pan over medium heat.',
          'Soak bread slices in mixture until saturated. Cook bread on each side until golden brown. Serve hot.',
        ],
      ),
    ];
  }
}