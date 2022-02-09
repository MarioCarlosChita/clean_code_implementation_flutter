import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_event.dart';
import 'package:app_bloc/apps/modules/autenticacao/blocs/post/post_state.dart';
import 'package:app_bloc/apps/modules/autenticacao/repository/post_repository.dart';
import 'package:app_bloc/apps/share/models/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent , PostState>{
  final PostRepository repository;
  PostBloc({required this.repository});
  Stream<PostState> mapEventToState(PostEvent event) async* {
     if(event is  PostEventLoadeadList){
        List<Post> lista =  await  repository.fetchPosts();
        yield PostStateLoadedList(lista: lista);
     }
     if(event is PostEventUpdatedList){
       yield PostStateLoading();
       List<Post> lista =  await  repository.fetchPosts();
       yield PostStateLoadedList(lista: lista);
     }
  }

  @override
  // TODO: implement initialState
  PostState get initialState => PostStateLoading();
}