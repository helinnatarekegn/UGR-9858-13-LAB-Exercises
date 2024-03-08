import 'dart:math';

void main() {
 
  List<int> randomNumbers = List.generate(20, (_) => Random().nextInt(100));

  
  print('Original list of random numbers: $randomNumbers');

  
  Set<int> uniqueNumbers = Set.from(randomNumbers);

  print('Unique numbers: $uniqueNumbers');
}
