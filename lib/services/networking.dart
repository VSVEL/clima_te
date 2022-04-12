import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.getUrl);

  final Uri getUrl;

  Future getData() async {
    http.Response response = await http.get(getUrl);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}