// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/employees_model.dart';

class EmployeeServices {
  static const mainUrl = "http://jsonplaceholder.typicode.com/users/";
  // Accept header value
  static const _acceptValue = 'application/json';
  static const _acceptKey = 'Accept';

  static Future<List<ResponseData>?> getEmployees() async {
    http.Response response;
    try {
      response = await http.get(
        Uri.parse(mainUrl),
        headers: {
          _acceptKey: _acceptValue,
        },
      );

      if (response.statusCode == 200) {
        print('aaaaaaaa' + response.statusCode.toString());
        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
        return parsed
            .map<ResponseData>((json) => ResponseData.fromJson(json))
            .toList();
      } else if (response.statusCode == 400) {
        return null;
      }
    } catch (ex) {
      print('dddddddd' + ex.toString());
      return null;
    }
    return null;
  }

  static Future<List<ResponseData>?> getAddressEmployee() async {
    http.Response response;
    try {
      response = await http.get(
        Uri.parse(mainUrl),
        headers: {
          _acceptKey: _acceptValue,
        },
      );

      if (response.statusCode == 200) {
        return (json.decode(response.body)['Address'] as List)
            .map((e) => ResponseData.fromJson(e))
            .toList();
      } else if (response.statusCode == 400) {
        return null;
      }
    } catch (ex) {
      return null;
    }
    return null;
  }
}
