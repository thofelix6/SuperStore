import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper{
  static const String _baseUrl = 'https://your-api-base-url.com'; //Replace with your api url

  // helper methode to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async{
    final reponse = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(reponse);
  }

  // helper methode to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final reponse = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Typr': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(reponse);
  }

  // helper methode to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async{
    final reponse = await http.put(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Typr': 'application/json'},
        body: json.encode(data),
    );
    return _handleResponse(reponse);
  }

  // helper methode to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async{
    final reponse = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(reponse);
  }

  // HAndle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}