void main() {

  List<String> favoriteHobbies = [];

  
  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Painting');
  favoriteHobbies.add('Cooking');
  favoriteHobbies.add('Gardening');

  
  print('Initial list of favorite hobbies: $favoriteHobbies');

 
  if (favoriteHobbies.isEmpty) {
    print('The list of favorite hobbies is empty.');
  } else {
    print('The list of favorite hobbies is not empty.');
  }

  
  favoriteHobbies.remove('Cooking');
  print('List after removing "Cooking": $favoriteHobbies');

  
  favoriteHobbies.sort();
  print('Sorted list of favorite hobbies: $favoriteHobbies');
}
