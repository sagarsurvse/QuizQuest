import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://api.jsonserve.com/Uw5CrX';

  static Future<dynamic> fetchQuizData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}