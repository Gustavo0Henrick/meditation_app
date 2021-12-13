import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/modules/meditation/meditation_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    List listIcon = [
      AppImages.calmSvg,
      AppImages.relaxSvg,
      AppImages.focusSvg,
      AppImages.anxiousSvg,
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 800),
            curve: Curves.decelerate,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: size.height * 0.75,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: size.width,
                              child: const Text(
                                'Welcome back, User!',
                                style: AppFonts.alegreyaRegular30white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: size.width,
                                  child: const Text(
                                    'How are you feeling today ?',
                                    style: AppFonts.alegreyaRegular22white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: 80,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Opacity(
                              opacity: 0.9,
                              child: Container(
                                height: 65,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SvgPicture.asset(listIcon[0]),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 22, right: 22),
                              child: Opacity(
                                opacity: 0.9,
                                child: Container(
                                  height: 65,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(listIcon[1]),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.9,
                              child: Container(
                                height: 65,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SvgPicture.asset(listIcon[2]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Opacity(
                                opacity: 0.9,
                                child: Container(
                                  height: 65,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(listIcon[3]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (builder) => MeditationPage(),
                              ));
                        },
                        child: Container(
                          width: 350,
                          height: 170,
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 170,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Meditation 101',
                                        style: AppFonts.alegreyaRegular25black,
                                      ),
                                      const Text(
                                        'Techniques, Benefits, and a Beginner’s How-To',
                                        style: AppFonts.alegreyaRegular15black,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 140,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: AppColors.darkGreen,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Text(
                                                'watch now',
                                                style: AppFonts
                                                    .alegreyaRegular15white,
                                              ),
                                              SvgPicture.asset(
                                                  AppImages.playerMiniSvg),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  AppImages.meditationPreviewPng,
                                  scale: 1.2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        height: 170,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cardio Meditation',
                                      style: AppFonts.alegreyaRegular25black,
                                    ),
                                    const Text(
                                      'Basics of Yoga for Beginners or Experienced Professionals',
                                      style: AppFonts.alegreyaRegular15black,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 140,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColors.darkGreen,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              'watch now',
                                              style: AppFonts
                                                  .alegreyaRegular15white,
                                            ),
                                            SvgPicture.asset(
                                                AppImages.playerMiniSvg),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                AppImages.cardioMeditationPng,
                                scale: 1.2,
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
      ),
    );
  }
}
