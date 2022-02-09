import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_bloc.dart';
import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_event.dart';
import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_state.dart';
import 'package:app_bloc/apps/share/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPageLista extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return  BlocBuilder(
          bloc: BlocProvider.of<PostBloc>(context)..add(PostEventLoadeadList()),
          builder:(_, state){
              if(state is PostStateLoadedList){
                List<Post> ListaDePosts = state.lista;
                 return Scaffold(
                    body: ListView.builder(
                        itemCount: ListaDePosts.length,
                        itemBuilder:(_, index) {
                          return Container(
                            height: 80,
                            child: ListTile(
                              title: Text(ListaDePosts[index].title , style: TextStyle(
                                  color: Colors.black ,
                                  fontWeight: FontWeight.w100
                              ),),
                            ),
                          );
                        }
                    ),
                   floatingActionButton: FloatingActionButton(
                      onPressed: (){
                        BlocProvider.of<PostBloc>(context)..add(PostEventUpdatedList());
                      },
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.add, color: Colors.black,),
                   ),
                 );
              }else{
                  return  Center(
                      child:  CircularProgressIndicator()
                  );
              }
          }
      );
  }



}