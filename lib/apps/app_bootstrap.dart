import 'package:app_bloc/apps/modules/autenticacao/repository/post_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppBootStrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MultiRepositoryProvider(
         providers:[
             RepositoryProvider<PostRepository>(create: (context) => PostRepository())
         ],
         child: MaterialApp(
           initialRoute: '/',
           debugShowCheckedModeBanner: false,
           onGenerateRoute: Modular.generateRoute,
           navigatorKey: Modular.navigatorKey,
         )
     );
  }

}