import 'package:provider_mvc_sample/base/base_imports.dart';
import 'package:http/http.dart' as http;

class NetworkClient extends BaseServices {
  @override
  Future delete(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.delete(Uri.parse("${Config.baseUrl}$url"));
  }

  @override
  Future<http.Response> get(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.get(Uri.parse("${Config.baseUrl}$url"));
  }

  @override
  Future<http.Response> patch(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.patch(Uri.parse("${Config.baseUrl}$url"));
  }

  @override
  Future<http.Response> post(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.post(Uri.parse("${Config.baseUrl}$url"));
  }
}
