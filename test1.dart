void main() {
  
  List<Map<String, dynamic>> fruits = [  // List of fruits using  maps
    {
      "name": "Apple",
      "color": "Red",
      "price": 2.5,
    },
    {
      "name": "Banana",
      "color": "Yellow",
      "price": 1.0,
    },
    {
      "name": "Grapes",
      "color": "Purple",
      "price": 3.0,
    },
  ];
  print('\nOriginal Fruit Details before Discount:');
  displayFruitDetails(fruits); // Print original fruit details
  applyPriceDiscount(fruits, 10); // Apply 10% discount
  print("\nFruit Details After Applying 10% Discount:"); // Print fruit details after discount
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  // Function to display details of each fruit
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$ ${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  // Function to apply discount on price of each fruit
  for (var fruit in fruits) {
    fruit['price'] = fruit['price'] * (1 - discount / 100);
  }
}
