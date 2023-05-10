//Clase de implementacion de la fuente de datos local de videos



import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';



class LocalVideoDataSource implements VideoPostDataSource{

  bool initialLoading = true;
  List<VideoPost> videos = [];

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async{

    await Future.delayed(const Duration(seconds: 1));

        final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()    
    ).toList();
    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    // TODO: implement getTrendingVideoByUser
    throw UnimplementedError();
  }

}