import 'package:music_player/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String coverUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.coverUrl,
  });
  static List<Playlist> playlist = [
    Playlist(
      title: 'Leo ordinary Person',
      songs: Song.songs,
      coverUrl: 'assets/images/leo ordinary.jpg',
    ),
    Playlist(
      title: 'Lokiverse 2.0',
      songs: Song.songs,
      coverUrl: 'assets/images/lokiverse2.0.jpg',
    ),
    Playlist(
      title: 'Pathala Pathala - Vikram',
      songs: Song.songs,
      coverUrl: 'assets/images/pathala.jpg',
    ),
    Playlist(
      title: 'Vikram title track',
      songs: Song.songs,
      coverUrl: 'assets/images/Vikram-Telugu-Movie-Review.jpg',
    ),
  ];
}
