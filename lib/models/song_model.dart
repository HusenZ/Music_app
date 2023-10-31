class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
      title: 'Leo ordinary Peron',
      description: 'Famous song of tollywood',
      url: 'assets/songs/LEO Ordinary Person.mp3',
      coverUrl: 'assets/images/leo ordinary.jpg',
    ),
    Song(
      title: 'Lokiverse 2.0',
      description: 'Famous song of tollywood',
      url: 'assets/songs/Lokiverse 2.0.mp3',
      coverUrl: 'assets/images/lokiverse2.0.jpg',
    ),
    Song(
      title: 'Pathala Pathala - Vikram',
      description: 'Big fan of Kamal Hasan sir',
      url: 'assets/songs/Pathala Pathala.mp3',
      coverUrl: 'assets/images/pathala.jpg',
    ),
    Song(
      title: 'Vikram title track',
      description: 'Great Lokiverse series big fan',
      url: 'assets/songs/VIKRAM Title Track.mp3',
      coverUrl: 'assets/images/Vikram-Telugu-Movie-Review.jpg',
    ),
  ];
}
