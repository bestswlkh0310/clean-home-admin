import 'package:cleanhome/service/api_client.dart';
import 'package:http/http.dart' as http;

class ItemApi {
  static Future<http.Response> getItemAll() {
    return ApiClient.client.get(Uri.parse('http://172.30.1.85:3000/item'));
  }
}