import 'package:provider_mvc_sample/base/base_imports.dart';
import 'package:http/http.dart' as http;

class NetworkClient extends BaseServices {
  @override
  Future delete(
    String url, {
    dynamic args,
    dynamic headers,
  }) {
    throw UnimplementedError();
  }

  @override
  Future get(
    String url, {
    dynamic args,
    dynamic headers,
  }) async {
    return await http.get(Uri.parse(url));
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
