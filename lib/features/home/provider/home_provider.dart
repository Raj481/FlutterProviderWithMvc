import 'dart:convert';

import 'package:provider_mvc_sample/base/base_imports.dart';

class HomeProvider extends BaseProvider {
  dynamic _posts;
  List<dynamic> get getPosts => _posts ?? [];

  setPosts(dynamic value) {
    _posts = value;
    notifyListeners();
  }

  /// get user posts
  Future getUserPost() async {
    await ApiServices.instance.getPosts().then(
      (value) {
        if (value != null) {
          setPosts(jsonDecode(value));
        }
      },
    );
  }

  @override
  void resetController() {}
}
