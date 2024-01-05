import 'package:cleanhome/service/interceptor/uuid_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';

class ApiClient {
  static Client? _client;

  static Client get client {
    _initClient();
    return _client!;
  }

  static void _initClient() {
    _client ??= InterceptedClient.build(
        interceptors: [UUIDInterceptor()],
      );
  }
}