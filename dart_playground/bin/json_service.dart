import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  execute(DioJsonService());
  execute(HttpJsonService());
}

void execute(JsonService service) {
  service.getJson();
}

abstract class JsonService {
  void getJson();
}

class DioJsonService implements JsonService {
  final dio = Dio();

  @override
  void getJson() async {
    var response =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.data.toString());
  }
}

class HttpJsonService implements JsonService {
  @override
  void getJson() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    print(response.body);
  }
}
