import 'dart:io';

void main() {
  Map<String, int> cart = {}; 
  Map<String, double> productPrices = {
    'Apple': 2.50,
    'Banana': 1.50,
    'Orange': 3.00,
    'Mango': 4.50,
  }; 

  while (true) {
    print('\nShopping Cart:');
    if (cart.isEmpty) {
      print('Cart is empty.');
    } else {
      cart.forEach((product, quantity) {
        double totalPrice = productPrices[product]! * quantity;
        print('$product: $quantity x \$${productPrices[product]} = \$${totalPrice.toStringAsFixed(2)}');
      });
    }

    print('\nMenu:');
    print('1. Add item to cart');
    print('2. Remove item from cart');
    print('3. Calculate total price');
    print('4. Exit');

    stdout.write('\nEnter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addToCart(cart, productPrices);
        break;
      case '2':
        removeFromCart(cart);
        break;
      case '3':
        calculateTotalPrice(cart, productPrices);
        break;
      case '4':
        print('Exiting the program.');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void addToCart(Map<String, int> cart, Map<String, double> productPrices) {
  print('\nAvailable products:');
  productPrices.forEach((product, price) {
    print('$product - \$${price.toStringAsFixed(2)}');
  });

  stdout.write('Enter the name of the product: ');
  String productName = stdin.readLineSync()!;

  if (!productPrices.containsKey(productName)) {
    print('Invalid product name. Please try again.');
    return;
  }

  stdout.write('Enter the quantity: ');
  int quantity = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (quantity <= 0) {
    print('Invalid quantity. Please enter a positive number.');
    return;
  }

  cart.update(productName, (value) => value + quantity, ifAbsent: () => quantity);
  print('Item added to cart.');
}

void removeFromCart(Map<String, int> cart) {
  print('\nShopping Cart:');
  if (cart.isEmpty) {
    print('Cart is empty.');
    return;
  }

  cart.forEach((product, quantity) {
    print('$product: $quantity');
  });

  stdout.write('Enter the name of the product to remove: ');
  String productName = stdin.readLineSync()!;
  if (!cart.containsKey(productName)) {
    print('Product not found in cart.');
    return;
  }

  stdout.write('Enter the quantity to remove: ');
  int quantityToRemove = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (quantityToRemove <= 0 || quantityToRemove > cart[productName]!) {
    print('Invalid quantity. Please enter a positive number less than or equal to ${cart[productName]}.');
    return;
  }

  cart.update(productName, (value) => value - quantityToRemove);
  if (cart[productName] == 0) {
    cart.remove(productName);
  }
  print('Item removed from cart.');
}

void calculateTotalPrice(Map<String, int> cart, Map<String, double> productPrices) {
  double totalPrice = 0;

  cart.forEach((product, quantity) {
    totalPrice += productPrices[product]! * quantity;
  });

  print('Total price of items in the cart: \$${totalPrice.toStringAsFixed(2)}');
}
