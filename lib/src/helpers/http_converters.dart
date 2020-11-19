import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../cores/constants.dart' show URL_BASE;

Map<String, String> headerBuilder([String token]) {
  final headers = Map<String, String>();
  headers[HttpHeaders.acceptHeader] = 'application/json';
  headers[HttpHeaders.contentTypeHeader] = 'application/json';
  if (token != null) {
    headers['token'] = token;
  }
  if (headers != null && headers.isNotEmpty) {
    headers.forEach((key, value) {
      headers[key] = value;
    });
  }
  return headers;
}

String queryBuilder(String path, Map<String, dynamic> query) {
  final buffer = StringBuffer();
  final ur = URL_BASE;
  buffer.write('$URL_BASE$path');
  if (query != null) {
    if (query.isNotEmpty) {
      buffer.write('?');
    }
    query.forEach((key, value) {
      buffer.write('$key=$value&');
    });
  }
  print(buffer);
  return buffer.toString();
}

dynamic returnResponse({@required http.Response response}) {
  print('STATUS: ${response.statusCode}\n BODY: ${response.body}');
  if (response.statusCode == 200 || response.statusCode == 201) {
    return json.decode(response.body);
  }
  return null;
}
