import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/modules/dashboard/dashboard_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';
import 'package:meditation_app/src/widgets/music_card.dart';
import 'package:meditation_app/src/widgets/music_list.dart';
import 'package:meditation_app/src/widgets/music_tile.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double opacity = 0;
  Future<void> _opacityAnimation() async {
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity = 1;
    });
  }

  @override
  void initState() {
    super.initState();
    _opacityAnimation();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 800),
          curve: Curves.decelerate,
          child: Container(
            width: size.width,
            height: size.height * 0.75,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 20),
                    child: MusicCard(),
                  ),
                  Expanded(
                    child: MusicList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
