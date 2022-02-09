import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_bloc.dart';
import 'package:app_bloc/apps/modules/autenticacao/pages/login_page_lista.dart';
import 'package:app_bloc/apps/modules/autenticacao/repository/post_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Colors.white,
         body: BlocProvider(
             create: (_)=> PostBloc(repository: context.repository<PostRepository>()),
             child: LoginPageLista(),
         )
     );
  }
}