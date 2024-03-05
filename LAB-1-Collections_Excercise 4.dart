void main() {
  Map<String, int> cart = {};

  // Add items to the cart
  addToCart(cart, 'Apple', 2);
  addToCart(cart, 'Banana', 3);
  addToCart(cart, 'Orange', 1);

  // Print the items in the cart
  print('Items in the cart:');
  printCart(cart);

  // Calculate the total price
  double totalPrice = calculateTotalPrice(cart);
  print('Total price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeFromCart(cart, 'Banana');

  // Print the updated cart
  print('Updated cart after removing Banana:');
  printCart(cart);
}

// Function to add items to the cart
void addToCart(Map<String, int> cart, String itemName, int quantity) {
  cart[itemName] = quantity;
}

// Function to print the items in the cart
void printCart(Map<String, int> cart) {
  if (cart.isEmpty) {
    print('Cart is empty');
  } else {
    cart.forEach((itemName, quantity) {
      print('$itemName: $quantity');
    });
  }
}

// Function to calculate the total price
double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0;
  cart.forEach((itemName, quantity) {
    // Considering a simple price per item
    double pricePerItem = 1.5; // Example price per item
    totalPrice += pricePerItem * quantity;
  });
  return totalPrice;
}

// Function to remove an item from the cart
void removeFromCart(Map<String, int> cart, String itemName) {
  cart.remove(itemName);
}
