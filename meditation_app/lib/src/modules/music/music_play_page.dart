import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';
import 'package:meditation_app/src/widgets/app_bar.dart';

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayPage> createState() => _MusicPlayPageState();
}

class _MusicPlayPageState extends State<MusicPlayPage> {
  bool isPlaying = true;

  String sound = 'sounds/test.mp3';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.chevron_left_rounded,
                          size: 47,
                          color: AppColors.white,
                        ),
                      ),
                      SvgPicture.asset(AppImages.logoHomeSvg),
                      const SizedBox(width: 55),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 30),
                child: CircleAvatar(
                  radius: 120,
                  child: Image.asset(
                    AppImages.musicForestPng,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: const [
                    Text(
                      'Painting Forest',
                      style: AppFonts.alegreyaRegular35white,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        'By: Painting with Passion',
                        style: AppFonts.alegreyaRegular22white,
                      ),
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: const SliderThemeData(trackHeight: 1),
                child: Slider(
                  activeColor: AppColors.white,
                  inactiveColor: AppColors.green,
                  value: 0,
                  min: 0,
                  max: 320,
                  onChanged: (double value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(AppImages.randomMusicPng),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(AppImages.previousMusicPng),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          setState(() {
                            isPlaying = !isPlaying;
                          });
                          if (isPlaying) {}
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Icon(
                              isPlaying
                                  ? Icons.pause_circle_filled_rounded
                                  : Icons.play_circle_filled_rounded,
                              color: AppColors.white,
                              size: 80,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(AppImages.nextMusicPng),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(AppImages.repeatPng),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
