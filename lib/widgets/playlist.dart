import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/models/playlist_model.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Playlist> playlist = Playlist.playlist;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: playlist.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.toNamed('/playlist', arguments: playlist);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.amber.shade800.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15.0),
            ),
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    playlist[index].coverUrl,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        playlist[index].title,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        '${playlist[index].songs.length} songs',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
