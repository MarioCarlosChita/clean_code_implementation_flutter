import 'package:app_bloc/apps/share/models/post.dart';

abstract class PostState {}
class PostStateLoading extends PostState{}

class PostStateLoadedList extends PostState{
    final List<Post> lista;
    PostStateLoadedList({required this.lista});
}

