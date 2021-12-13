import 'package:flutter/material.dart';
import 'package:meditation_app/src/modules/music/music_play_page.dart';
import 'package:meditation_app/src/themes/app_images.dart';

import 'music_tile.dart';

class MusicList extends StatefulWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    List listMusic = [
      MusicTile(
        function: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const MusicPlayPage()));
        },
        title: 'Painting Forest',
        views: '59899 Listening',
        imagePath: AppImages.forestPng,
        time: '20 Min',
      ),
      MusicTile(
        function: () {},
        title: 'Mountaineers',
        views: '45697 Listening',
        imagePath: AppImages.mountaineersPng,
        time: '15 Min',
      ),
      MusicTile(
        function: () {},
        title: 'Lovely Deserts',
        views: '9428 Listening',
        imagePath: AppImages.desertsPng,
        time: '39 Min',
      ),
      MusicTile(
        function: () {},
        title: 'The Hill Sides',
        views: '52599 Listening',
        imagePath: AppImages.hillPng,
        time: '50 Min',
      ),
    ];
    return Container(
      width: 340,
      child: ListView.builder(
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: listMusic[index],
          );
        },
      ),
    );
  }
}
