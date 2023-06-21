import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiClient {
  Dio? dio;

  ApiClient() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://api.sportmonks.com/',
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    );
    dio = Dio(options);
  }

  Future<Object?> getAPI(
    context,
    String url, {
    Map<String, dynamic>? mQueryParameters,
  }) async {
    try {
      var response = await dio?.get(
        url,
        //  queryParameters: mQueryParameters,
      );
      return response;
    } on DioException catch (e) {
      print(e);
    }
  }
}
