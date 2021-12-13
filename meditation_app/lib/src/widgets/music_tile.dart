import 'package:flutter/material.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class MusicTile extends StatelessWidget {
  final String title;
  final String views;
  final String time;
  final String imagePath;
  var function;
  MusicTile({
    Key? key,
    required this.title,
    required this.views,
    required this.time,
    required this.imagePath,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 360,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: function,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imagePath),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppFonts.alegreyaRegular20white,
                      ),
                      Text(
                        views,
                        style: AppFonts.alegreya12white,
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.75,
                child: Text(
                  time,
                  style: AppFonts.alegreyaRegular15white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
