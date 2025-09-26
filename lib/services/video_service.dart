class VideoService {
  // This class can be used to fetch video URLs from a server or local storage
  // For this example, we are using a static URL in the VideoPlayerScreen.

  Future<String> getVideoUrl() async {
    //Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    return 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
  }
}