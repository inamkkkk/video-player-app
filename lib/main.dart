import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_app/screens/video_player_screen.dart';
import 'package:video_player_app/providers/video_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoProvider(),
      child: MaterialApp(
        title: 'Video Player',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const VideoPlayerScreen(),
      ),
    );
  }
}