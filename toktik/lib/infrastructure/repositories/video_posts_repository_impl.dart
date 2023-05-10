import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

import '../../domain/entities/video_post.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostsRepositoryImpl({
    required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {

    return videoPostDataSource.getTrendingVideoByPage(page);
    
  }
}
