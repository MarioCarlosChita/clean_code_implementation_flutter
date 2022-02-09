import 'package:app_bloc/apps/share/http_service.dart';
import 'package:app_bloc/apps/share/models/post.dart';
import 'package:http/http.dart';
import 'dart:convert';

class  PostRepository extends HttpService{

   Future<List<Post>>  fetchPosts() async{
     final Response  _response =  await getFetch('https:dsd//jsonplaceholder.typicode.com/posts');
     return  PostFromJson(_response.body);
   }


}