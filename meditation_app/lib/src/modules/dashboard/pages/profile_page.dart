import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';
import 'package:meditation_app/src/widgets/achievements_widget.dart';
import 'package:meditation_app/src/widgets/stats_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int indexMenu = 0;
  double opacity = 0;
  PageController _pageController = PageController(initialPage: 0);

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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: opacity,
            curve: Curves.decelerate,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: size.height * 0.8,
                width: size.width,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      child: Image.asset(
                        AppImages.photoPng,
                        fit: BoxFit.fill,
                        scale: 0.75,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('User Name',
                                style: AppFonts.alegreyaBold34white),
                            Text('User Location',
                                style: AppFonts.alegreyaRegular20white),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedOpacity(
                            opacity: indexMenu == 0 ? 1 : 0.2,
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.decelerate,
                            child: Container(
                              width: size.width / 2,
                              height: 55,
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 35,
                                      width: size.width,
                                      child: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              indexMenu = 0;
                                              _pageController.animateToPage(0,
                                                  duration: const Duration(
                                                      milliseconds: 400),
                                                  curve: Curves.decelerate);
                                            });
                                          },
                                          child: const Text('STATS',
                                              style: AppFonts
                                                  .alegreyaBold16white)),
                                    ),
                                  ),
                                  const Divider(
                                    color: AppColors.lightGreen,
                                    thickness: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            opacity: indexMenu == 1 ? 1 : 0.2,
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.decelerate,
                            child: Container(
                              width: size.width / 2,
                              height: 55,
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      width: size.width,
                                      height: 35,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            indexMenu = 1;
                                            _pageController.animateToPage(1,
                                                duration: const Duration(
                                                    milliseconds: 400),
                                                curve: Curves.decelerate);
                                          });
                                        },
                                        child: const Text('ACHIEVEMENTS',
                                            style:
                                                AppFonts.alegreyaBold16white),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    color: AppColors.lightGreen,
                                    thickness: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: size.width,
                        child: PageView(
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: StatsWidget(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: AchievementsWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
