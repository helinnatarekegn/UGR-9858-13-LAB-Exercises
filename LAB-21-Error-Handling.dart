import 'dart:io';

void main() {
  final filePath = 'downloded.pdf'; 

  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}
