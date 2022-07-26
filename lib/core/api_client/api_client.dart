import 'dart:convert';
import 'dart:io';

import 'package:digital_application/core/api_client/unathorised_exception.dart';
import 'package:digital_application/flavors.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';

class ApiClient {
  final Client _client;
  static String appBasesUrl = "https://api.seatgeek.com/";

  ApiClient(this._client);

  dynamic get(String path, {Map<dynamic, dynamic>? params}) async {
    await Future.delayed(Duration(milliseconds: 500));

    final response = await _client.get(
      getPath(path, params),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  dynamic post(String path, {Map<dynamic, dynamic>? params}) async {
    final response = await _client.post(
      getPath(path, null),
      body: jsonEncode(params),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  dynamic deleteWithOutBody(String path,
      {Map<dynamic, dynamic>? params}) async {
    Request request = Request('DELETE', getPath(path, null));
    request.headers['Content-Type'] = 'application/json';
    //request.body = jsonEncode(params);
    final response = await _client.send(request).then(
          (value) => Response.fromStream(value),
        );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else if (response.statusCode == 401) {
      throw UnauthorisedException();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Uri getPath(String path, Map<dynamic, dynamic>? params) {
    var paramsString = '';
    if (params?.isNotEmpty ?? false) {
      params?.forEach((key, value) {
        paramsString += '&$key=$value';
      });
    }

    return Uri.parse('$appBasesUrl$path$paramsString');
  }
}
