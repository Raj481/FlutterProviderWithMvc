abstract class BaseServices {
  Future<dynamic> get(String url);
  Future<dynamic> post(String url);
  Future<dynamic> delete(String url);
  Future<dynamic> patch(String url);
}
