import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';

class SongCard extends StatelessWidget {
  final Song song;
  const SongCard({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(
            song.coverUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
