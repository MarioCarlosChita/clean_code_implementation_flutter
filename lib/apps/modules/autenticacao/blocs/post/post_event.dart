import 'package:app_bloc/apps/share/models/post.dart';

abstract class PostEvent{}
class PostEventLoadeadList extends PostEvent{}
class PostEventUpdatedList extends PostEvent{}