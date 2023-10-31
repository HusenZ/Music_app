import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/playlist_screen.dart';
import 'package:music_player/screens/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/song',
          page: () => const SongScreen(),
        ),
        GetPage(
          name: '/playlist',
          page: () => const PlaylistScreen(),
        ),
      ],
    );
  }
}
