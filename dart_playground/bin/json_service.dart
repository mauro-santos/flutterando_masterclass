import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  consume(DioJsonService());
  consume(HttpJsonService());
}

void consume(JsonService service) async {
  final data = await service.fetchJson();
  print(data);
}

abstract class JsonService {
  Future<Map> fetchJson();
}

class DioJsonService implements JsonService {
  final dio = Dio();

  @override
  Future<Map> fetchJson() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');

    return response.data;
  }
}

class HttpJsonService implements JsonService {
  @override
  Future<Map> fetchJson() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    return jsonDecode(response.body);
  }
}
