String reverseString(String input) {
  return input.split('').reversed.join('');
}

void main() {
  String original = "Helinna!";
  String reversed = reverseString(original);
  print("Original string: $original");
  print("Reversed string: $reversed");
}
