import 'package:provider_mvc_sample/base/base_imports.dart';

class ApiServices {
  ApiServices._internal();

  static ApiServices get instance => ApiServices._internal();

  NetworkClient get client => NetworkClient();
}
