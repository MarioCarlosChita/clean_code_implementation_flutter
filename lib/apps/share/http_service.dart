import 'dart:io';
import 'package:app_bloc/apps/share/http_interface.dart';
import 'package:http/http.dart';


abstract class HttpService implements HttpInterface{

  @override
  Future<Response> getFetch(String path) async{
     try{
         return await  get(Uri.parse(path));
       } on HttpException catch(exception){
           throw  exception.message;
       }on SocketException catch(exception){
          throw exception.message;
      }
   }

}