import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String apiUrl = "http://localhost:8000/classify";  // Replace with your server URL

  Future<Map<String, dynamic>?> classifyImage(File imageFile) async {
    var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
    request.files.add(await http.MultipartFile.fromPath('file', imageFile.path));

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseData = await http.Response.fromStream(response);
      return json.decode(responseData.body);
    } else {
      print("Error: ${response.statusCode}");
      return null;
    }
  }
}
