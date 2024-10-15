import 'package:provider_mvc_sample/base/base_imports.dart';
import 'apis.dart';

class ApiServices {
  ApiServices._internal();

  static ApiServices get instance => ApiServices._internal();

  NetworkClient get client => NetworkClient();

  Future<dynamic> getPosts() async {
    var response = await client.get(Apis.posts);
    return response.body;
  }
}
