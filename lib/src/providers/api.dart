import 'dart:io';

import 'package:seminario_02/src/providers/preferences.dart';
import 'package:seminario_02/src/utils/globals.dart' as utils;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class ApiProvider {
  Preferences _preferences = Preferences();

  Future<dynamic> login(dynamic body) async {
    final response = await http.post('${utils.url}/login', body: body);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final data = json.decode(response.body);
      _preferences.token = data['token'];
      return 200;
    } else {
      return 400;
    }
    // if (statusCode == 404) {
    //   return 'Not Found';
    // } else if (statusCode == 401) {
    //   return 'Usuario o contraseña incorrectos';
    // } else if (statusCode == 200) {
    //   final data = json.decode(response.body);
    //   _preferences.token = data['token'];
    //   return 'OK';
    // }
  }

  Future<dynamic> getProductList() async {
    // final headers = {'Authorization': '${_preferences.token}'};
    // final response = await http.get('${utils.url}/products', headers: headers);
    final response = await http.get('${utils.url}/products');
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final data = json.decode(response.body);
      return data['list'];
    } else {
      return [];
    }
  }

  Future<dynamic> postProduct(dynamic body, File image) async {
    Dio dio = Dio();
    dio.options.headers['Authorization'] = '${_preferences.token}';
    if (image != null) {
      String fileName = image.path.split('/').last;
      FormData formData = FormData.fromMap({
        'title': body['title'],
        'description': body['description'],
        'value': body['value'],
        'img': await MultipartFile.fromFile(image.path, filename: fileName),
      });
      final response = await dio.post('${utils.url}/product', data: formData);
      if (response.statusCode == 200) {
        return 200;
      } else {
        return 400;
      }
    } else {
      FormData formData = FormData.fromMap({
        'title': body['title'],
        'description': body['description'],
        'value': body['value'],
      });
      final response = await dio.post('${utils.url}/product', data: formData);
      if (response.statusCode == 200) {
        return 200;
      } else {
        return 400;
      }
    }
  }
}
