import 'package:provider_mvc_sample/base/base_imports.dart';
import 'package:http/http.dart' as http;
import 'package:provider_mvc_sample/core/network/apis.dart';

class NetworkClient extends BaseServices {
  @override
  Future delete(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.delete(Uri.parse(url));
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
  Future patch(
    String url, {
    dynamic args,
    dynamic headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future post(
    String url, {
    dynamic args,
    dynamic headers,
  }) {
    throw UnimplementedError();
  }
}
