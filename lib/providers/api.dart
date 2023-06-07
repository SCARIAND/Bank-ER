import 'package:dio/dio.dart';
import 'dart:convert';

class Api {
  static final _dio = Dio(
    BaseOptions(
        baseUrl:
            "https://raw.githubusercontent.com/zetxks/tms_api/main/project-3"),
  );

  static Future<dynamic> get(String method) async {
    final response = await _dio.get('$method.json');
    return  jsonDecode(response.data);
  }
}