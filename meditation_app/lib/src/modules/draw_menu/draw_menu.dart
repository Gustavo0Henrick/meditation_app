import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class DrawMenu extends StatefulWidget {
  const DrawMenu({Key? key}) : super(key: key);

  @override
  State<DrawMenu> createState() => _DrawMenuState();
}

double opacity = 0;

class _DrawMenuState extends State<DrawMenu> {
  Future<void> _opacityAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
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
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
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
                          onTap: () {
                            setState(() {
                              opacity = 0;
                            });
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close_rounded,
                            size: 37,
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
                  padding: const EdgeInsets.only(left: 30, top: 40, bottom: 20),
                  child: Row(
                    children: const [
                      Text(
                        'Tools',
                        style: AppFonts.alegreyaRegular35white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 390,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.cardGreen,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              width: 160,
                              height: 115,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Image.asset(
                                      AppImages.cloud1Png,
                                      color: AppColors.cloudGreen,
                                      alignment: Alignment.bottomCenter,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 50,
                                    left: 30,
                                    child: Image.asset(AppImages.newsPng),
                                  ),
                                  const Positioned(
                                    bottom: 25,
                                    left: 30,
                                    child: Text('Mood Journal',
                                        style: AppFonts.alegreya18white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.lightCardGreen,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              width: 160,
                              height: 115,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Image.asset(
                                      AppImages.cloud1Png,
                                      color: AppColors.anotherCloudGreen,
                                      alignment: Alignment.bottomCenter,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 50,
                                    left: 30,
                                    child: Image.asset(AppImages.rocketPng),
                                  ),
                                  const Positioned(
                                    bottom: 25,
                                    left: 30,
                                    child: Text('Mood Booster',
                                        style: AppFonts.alegreya18white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.anotherCardGreen,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              width: 160,
                              height: 115,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Image.asset(
                                      AppImages.cloud1Png,
                                      color: AppColors.darkCloudGreen,
                                      alignment: Alignment.bottomCenter,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 50,
                                    left: 30,
                                    child: Image.asset(AppImages.brainPng),
                                  ),
                                  const Positioned(
                                    bottom: 25,
                                    left: 30,
                                    child: Text('Positive Notes',
                                        style: AppFonts.alegreya18white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.anotherLightCardGreen,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              width: 160,
                              height: 115,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Image.asset(
                                      AppImages.cloud1Png,
                                      color: AppColors.lightCloudGreen,
                                      alignment: Alignment.bottomCenter,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 50,
                                    left: 30,
                                    child: Image.asset(AppImages.verifyPng),
                                  ),
                                  const Positioned(
                                    bottom: 25,
                                    left: 30,
                                    child: Text('Trigger Plan',
                                        style: AppFonts.alegreya18white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.lightCardBrow,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              width: 160,
                              height: 115,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: 160,
                                    child: Image.asset(
                                      AppImages.cloud1Png,
                                      color: AppColors.lightCloudBrow,
                                      alignment: Alignment.bottomCenter,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 50,
                                    left: 30,
                                    child: Image.asset(AppImages.flagPng),
                                  ),
                                  const Positioned(
                                    bottom: 25,
                                    left: 30,
                                    child: Text('Goal Trainer',
                                        style: AppFonts.alegreya18white),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}
