class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  
  Product product = Product("RangeRover Cars", 7000000, 2);

  
  double totalCost = product.calculateTotalCost();

  
  print("Total cost of ${product.name}: \$${totalCost.toStringAsFixed(2)}");
}
