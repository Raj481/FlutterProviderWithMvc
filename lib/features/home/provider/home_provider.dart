import 'package:provider_mvc_sample/base/base_imports.dart';

class HomeProvider extends BaseProvider {
  dynamic _posts;
  List<dynamic> get getPosts => _posts ?? [];

  bool _loading = false;
  bool get isLoading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setPosts(dynamic value) {
    _posts = value;
    notifyListeners();
  }

  /// get user posts
  Future getUserPost() async {
    setLoading(true);
    await ApiServices.instance.getPosts().then(
      (value) {
        setLoading(false);
        if (value is SuccessResponse) {
          setPosts(value.data);
        }
      },
    );
  }

  @override
  void resetController() {}
}
