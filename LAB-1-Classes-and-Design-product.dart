class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate the total cost of the product
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product = Product("Laptop", 800.0, 2);

  // Calculate and print the total cost of the product
  double totalCost = product.calculateTotalCost();
  print('Total cost of ${product.name}: \$$totalCost');
}
