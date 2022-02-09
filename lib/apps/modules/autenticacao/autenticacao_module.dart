import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_bloc.dart';
import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_state.dart';
import 'package:app_bloc/apps/modules/autenticacao/pages/login_page.dart';
import 'package:app_bloc/apps/modules/autenticacao/repository/post_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AutenticacaoModule extends ChildModule{

  List<Bind> get binds => [];

  List<ModularRouter> get routers => [
      ModularRouter('/' , child: (_ ,args) => LoginPage())
  ];

}