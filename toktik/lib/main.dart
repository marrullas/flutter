import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repository_impl.dart';

import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videoPostDataSource: LocalVideoDataSource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy:
                false, //propiedad opcional para que no se cargue hasta que se necesite, por defecto es true
            create: (_) => DiscoverProvider(videoPostRepository: videoPostRepository)..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'TokTik',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
