import 'package:app_bloc/apps/app_bootstrap.dart';
import 'package:app_bloc/apps/modules/autenticacao/autenticacao_module.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule{

  List<Bind> get binds => [];
  Widget get bootstrap =>AppBootStrap();

  List<ModularRouter> get routers => [
       ModularRouter('/', module: AutenticacaoModule())
  ];

}