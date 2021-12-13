import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/src/modules/dashboard/pages/home_page.dart';
import 'package:meditation_app/src/modules/dashboard/pages/profile_page.dart';
import 'package:meditation_app/src/modules/music/music_play_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';
import 'package:meditation_app/src/widgets/app_bar.dart';

import 'pages/music_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

int indexMenu = 0;

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    List listPages = [
      const HomePage(),
      const MusicPage(),
      const ProfilePage(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              AppBarAvatar(
                indexMenu: indexMenu,
                onTap: () {
                  setState(() {
                    indexMenu = 2;
                  });
                },
              ),
              Container(
                width: size.width,
                height: size.height * 0.72,
                child: listPages[indexMenu],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  indexMenu = 0;
                });
              },
              child: AnimatedContainer(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 800),
                child: SvgPicture.asset(
                  indexMenu == 0
                      ? AppImages.homeSelectedSvg
                      : AppImages.homeSvg,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexMenu = 1;
                });
              },
              child: AnimatedContainer(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 800),
                child: SvgPicture.asset(
                  indexMenu == 1
                      ? AppImages.musicSelectedSvg
                      : AppImages.musicSvg,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexMenu = 2;
                });
              },
              child: AnimatedContainer(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 800),
                child: SvgPicture.asset(
                  indexMenu == 2
                      ? AppImages.userSelectedSvg
                      : AppImages.userSvg,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
