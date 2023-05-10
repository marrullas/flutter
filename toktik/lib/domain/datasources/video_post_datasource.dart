

import '../entities/video_post.dart';

abstract class VideoPostDataSource {

  Future<List<VideoPost>> getTrendingVideoByPage( int page);
  Future<List<VideoPost>> getTrendingVideoByUser( String userID);
  /*Future<List<VideoPost>> getVideoPosts();
  Future<VideoPost> getVideoPost(String id);
  Future<VideoPost> createVideoPost(VideoPost videoPost);
  Future<VideoPost> updateVideoPost(VideoPost videoPost);
  Future<void> deleteVideoPost(String id);*/
}