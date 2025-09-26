import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier {
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;

  Future<void> initializePlayer(String videoUrl) async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    await _controller!.initialize();
    _controller!.setLooping(true);
    notifyListeners();
  }

  void disposePlayer() {
    _controller?.dispose();
  }
}