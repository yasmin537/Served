

class Restaurant {
  final String name;
  final String category;
  Restaurant({
    this.name,
    this.category,
});
}



List<Restaurant> loadRestaurants(){
  var rest = <Restaurant>[
    Restaurant(
      name: "Spiros Pizza",
      category: "Greek"
    ),
    Restaurant(
      name: "Golden Leaf Restaurant",
      category: "Chinese"
    ),
    Restaurant(
      name: "Bonterra Trattoria",
      category: "Italian"
    )
  ];
  return rest;
}