import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

class ClientHttp {
  Future<http.Response> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    return response;
  }

  Future<http.Response> post({
    required String url,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
      encoding: encoding,
    );
    return response;
  }

  Future<http.Response> put({
    required String url,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await http.put(
      Uri.parse(url),
      headers: headers,
      body: body,
      encoding: encoding,
    );
    return response;
  }

  Future<http.Response> patch({
    required String url,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await http.patch(
      Uri.parse(url),
      headers: headers,
      body: body,
      encoding: encoding,
    );
    return response;
  }

  Future<http.Response> delete({
    required String url,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await http.delete(
      Uri.parse(url),
      headers: headers,
      body: body,
      encoding: encoding,
    );
    return response;
  }

  Future<http.Response> head({
    required String url,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final response = await http.head(
      Uri.parse(url),
      headers: headers,
    );
    return response;
  }

  Future<String> read({
    required String url,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final response = await http.read(
      Uri.parse(url),
      headers: headers,
    );
    return response;
  }

  Future<Uint8List> readBytes({
    required String url,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final response = await http.readBytes(
      Uri.parse(url),
      headers: headers,
    );
    return response;
  }
}
