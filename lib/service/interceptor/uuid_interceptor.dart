import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UUIDInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? uuid = prefs.getString('UUID');

      data.headers['Authorization'] = 'Bearer $uuid';
    } catch (e) {
      debugPrint('hello');
      print(e);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async => data;
}
