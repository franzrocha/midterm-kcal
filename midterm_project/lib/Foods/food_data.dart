class FoodData {
  String name;
  String icon;

  FoodData({
    required this.name,
    required this.icon,
  });
}

class FoodPageData {
  static List<FoodData> getFoodData() {
    return [
      FoodData(
        name: 'Cookies',
        icon: 'assets/images/cookie.png',
      ),
      FoodData(
        name: 'Burger',
        icon: 'assets/images/burger.png',
      ),
      FoodData(
        name: 'Cakes',
        icon: 'assets/images/cake.png',
      ),
      FoodData(
        name: 'Pizza',
        icon: 'assets/images/pizza.png',
      ),
      FoodData(
        name: 'Hotdog',
        icon: 'assets/images/hotdog.png',
      ),
      FoodData(
        name: 'Fries',
        icon: 'assets/images/fries.png',
      ),
      FoodData(
        name: 'Donuts',
        icon: 'assets/images/donut.png',
      ),
    ];
  }
}
