import 'dart:async';


Future<List<String>> loadDataFromDatabase() async {
  
  await Future.delayed(Duration(seconds: 2));

  
  List<String> data = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  return data;
}

void main() async {
  
  print('Loading data...');
  var dataFuture = loadDataFromDatabase();

  
  var data = await dataFuture;

  
  print('Loaded data: $data');
}
