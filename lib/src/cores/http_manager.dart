import 'dart:convert';

import '../helpers/helper.dart';

import '../helpers/http_converters.dart' as _converts;
import 'package:http/http.dart' as _http;

import 'constants.dart' as _const;

Future get(
  String path, {
  Map<String, dynamic> query,
  Map<String, dynamic> headers,
  String token,
}) async =>
    _converts.returnResponse(
      response: await _http
          .get(
        _converts.queryBuilder(path, query),
        headers: _converts.headerBuilder(),
      )
          .timeout(
        _const.TIME_OUT_API,
        onTimeout: () {
          return null;
        },
      ),
    );

Future<Stream<T>> getSteam<T>(
  String path, {
  Map<String, dynamic> query,
  Map<String, dynamic> headers,
  String token,
  T Function(dynamic) decoder,
}) async {
  final st = await _http.Client().send(
    _http.Request(
      'get',
      Helper.getUri(path),
    ),
  );

  return st.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getDataFromMap(data))
      .expand((data) => (data as List))
      .map((data) => decoder(data));
}
