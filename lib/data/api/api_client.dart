import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as Http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' as Foundation;
import 'package:doctor_dashboard/utils/app_constants.dart';

class ApiClient extends GetxService {
  final String appBaseUrl = AppConstants.baseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient() {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  void updateHeader(String token) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    try {
      if (Foundation.kDebugMode) {
        debugPrint('====> API Call: $uri');
      }
      Http.Response _response = await Http.get(
        Uri.parse(appBaseUrl + uri),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 30));
      Response response = handleResponse(_response);
      if (Foundation.kDebugMode) {
        debugPrint(
            '====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      if (Foundation.kDebugMode) {
        debugPrint('====> API Call: $uri');
        debugPrint('====> API Body: $body');
      }
      Http.Response _response = await Http.post(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 30));
      Response response = handleResponse(_response);
      if (Foundation.kDebugMode) {
        debugPrint(
            '====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postMultipartData(
      String uri, Map<String, String> body, List<MultipartBody> multipartBody,
      {Map<String, String>? headers}) async {
    try {
      if (Foundation.kDebugMode) {
        debugPrint('====> API Call: $uri');
        debugPrint('====> API Body: $body');
      }
      Http.MultipartRequest _request =
          Http.MultipartRequest('POST', Uri.parse(appBaseUrl + uri));
      _request.headers.addAll(headers ?? _mainHeaders);
      for (MultipartBody multipart in multipartBody) {
        if (multipart.file.path.isNotEmpty) {
          if (Foundation.kIsWeb) {
            Uint8List _list = await multipart.file.readAsBytes();
            Http.MultipartFile _part = Http.MultipartFile(
              multipart.key,
              multipart.file.readAsBytes().asStream(),
              _list.length,
              filename: basename(multipart.file.path),
              contentType: MediaType('image', 'jpg'),
            );
            _request.files.add(_part);
          } else {
            File _file = File(multipart.file.path);
            _request.files.add(Http.MultipartFile(
              multipart.key,
              _file.readAsBytes().asStream(),
              _file.lengthSync(),
              filename: _file.path.split('/').last,
            ));
          }
        }
      }
      _request.fields.addAll(body);
      Http.Response _response =
          await Http.Response.fromStream(await _request.send());
      Response response = handleResponse(_response);
      if (Foundation.kDebugMode) {
        debugPrint(
            '====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> putData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      if (Foundation.kDebugMode) {
        debugPrint('====> API Call: $uri');
        debugPrint('====> API Body: $body');
      }
      Http.Response _response = await Http.put(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: 30));
      Response response = handleResponse(_response);
      if (Foundation.kDebugMode) {
        debugPrint(
            '====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> deleteData(String uri,
      {Map<String, String>? headers}) async {
    try {
      if (Foundation.kDebugMode) {
        debugPrint('====> API Call: $uri');
      }
      Http.Response _response = await Http.delete(
        Uri.parse(appBaseUrl + uri),
        headers: headers ?? _mainHeaders,
      ).timeout(const Duration(seconds: 30));
      Response response = handleResponse(_response);
      if (Foundation.kDebugMode) {
        debugPrint(
            '====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Response handleResponse(Http.Response response) {
    dynamic _body;
    try {
      _body = jsonDecode(response.body);
    } catch (e) {}
    Response _response = Response(
      body: _body ?? response.body,
      bodyString: response.body.toString(),
      headers: response.headers,
      statusCode: response.statusCode,
      statusText: response.reasonPhrase,
    );
    if (_response.statusCode != 200 &&
        _response.body != null &&
        _response.body is! String) {
      if (_response.body.toString().startsWith('{errors: [{code:')) {
        _response = Response(
          statusCode: _response.statusCode,
          body: _response.body,
          statusText: _response.bodyString,
        );
      } else if (_response.body.toString().startsWith('{message')) {
        _response = Response(
            statusCode: _response.statusCode,
            body: _response.body,
            statusText: _response.body['message']);
      }
    } else if (_response.statusCode != 200 && _response.body == null) {
      _response = const Response(
          statusCode: 0,
          statusText:
              'Connection to API server failed due to internet connection');
    }
    return _response;
  }
}

class MultipartBody {
  String key;
  PickedFile file;

  MultipartBody(this.key, this.file);
}
