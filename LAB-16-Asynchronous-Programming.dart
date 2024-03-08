import 'dart:io';

Future<void> downloadFile(String url, String savePath) async {
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();

  if (response.statusCode == 200) {
    var file = File(savePath);
    var bytes = await response.fold<List<int>>([], (b, data) => b..addAll(data));
    await file.writeAsBytes(bytes);
    print('File downloaded successfully!');
  } else {
    print('Failed to download file: ${response.statusCode}');
  }
}

void main() async {
  String url = 'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'; 
  String savePath = 'downloaded_file.pdf'; 

  try {
    await downloadFile(url, savePath);
  } catch (e) {
    print('Error: $e');
  }
}
