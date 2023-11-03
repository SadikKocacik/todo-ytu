import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:todo_app/model/todo.dart';

String url = 'https://jsonplaceholder.typicode.com/todos';

class NetworkHelper {
  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      print(response.body);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
