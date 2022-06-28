import 'package:http/http.dart' as http;

class EstimateApi {
  final baseUrl = 'https://api.github.com/search/users';

  Future<dynamic> getEstimates(String id) {
    final url = baseUrl + "?q=" + id;
    return http.get(Uri.parse(url));
  }
}
