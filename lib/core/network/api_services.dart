import 'dart:convert';

import 'package:provider_mvc_sample/base/base_imports.dart';
import 'apis.dart';

class ApiServices {
  ApiServices._internal();

  static ApiServices get instance => ApiServices._internal();

  NetworkClient get client => NetworkClient();

  Future<BaseResponse> getPosts() async {
    var response = await client.get(Apis.posts);
    if (response.statusCode == 200) {
      return SuccessResponse(
        statusCode: response.statusCode,
        status: "Success".toUpperCase(),
        data: jsonDecode(
          response.body,
        ),
      );
    }
    return FailedResponse(
      statusCode: response.statusCode,
      status: "Failed".toUpperCase(),
    );
  }
}
