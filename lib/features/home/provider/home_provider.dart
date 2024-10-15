import 'package:provider_mvc_sample/base/base_imports.dart';

class HomeProvider extends BaseProvider {
  /// get user posts
  Future getUserPost() async {
    await ApiServices.instance.getPosts().then((value) {
      if (value != null) {
        print(">>>Check ::: value");
        print(value);
      }
    });
  }

  @override
  void resetController() {}
}
