import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService extends GetxService {
  final String? baseUrl ;
  ApiService({this.baseUrl});
  
  Future<http.Response> test() async {
    final url = Uri.parse('$baseUrl');
    return await http.get(url);
  }

  // Add more methods (GET, POST, etc.)
}
