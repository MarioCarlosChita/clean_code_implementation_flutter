import 'package:http/http.dart';

abstract  class HttpInterface {
  Future<Response> getFetch(String path);
}