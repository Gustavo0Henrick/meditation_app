import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({Key? key}) : super(key: key);

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

int minCounter = 45;
int secCounter = 00;
bool counter = false;
bool start = false;
double opacity = 0;

class _MeditationPageState extends State<MeditationPage> {
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

  void _startCounter() async {
    while (counter == true) {
      print('teste $minCounter:$secCounter');
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        if (secCounter > 0) {
          secCounter = secCounter - 1;
        } else {
          secCounter = 59;
          minCounter = minCounter - 1;
        }
      });
    }
  }

  void _pauseCounter() {
    setState(() {
      counter = !counter;
    });
  }

  _resetCounter() async {
    setState(() {
      counter = false;
      start = false;
    });
    await Future.delayed(const Duration(milliseconds: 750));
    setState(() {
      minCounter = 45;
      secCounter = 00;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
          opacity: opacity,
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(50),
                          onTap: () async {
                            setState(() {
                              opacity = 0;
                            });
                            await _resetCounter();
                            Navigator.pop(context);
                          },
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
                const Text('Meditation',
                    style: AppFonts.alegreyaRegular35white),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 320,
                    child: const Text(
                      'Guided by a short introductory course, start trying meditation.',
                      textAlign: TextAlign.center,
                      style: AppFonts.alegreyaRegular20white,
                    ),
                  ),
                ),
                Image.asset(AppImages.meditationPng),
                Text(
                  '$minCounter:' + secCounter.toString().padLeft(2, '0'),
                  style: AppFonts.alegreyaRegular38white,
                ),
                Container(
                  width: 190,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: AppColors.green,
                    ),
                    onPressed: start
                        ? null
                        : () async {
                            setState(() {
                              counter = true;
                              start = true;
                            });
                            _startCounter();
                          },
                    child: const Text(
                      'Start Now',
                      style: AppFonts.alegreyaRegular25white,
                    ),
                  ),
                ),
                AnimatedOpacity(
                  curve: Curves.decelerate,
                  duration: const Duration(milliseconds: 500),
                  opacity: start ? 1 : 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _resetCounter();
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _pauseCounter();
                            _startCounter();
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.decelerate,
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              counter
                                  ? Icons.pause_rounded
                                  : Icons.play_arrow_rounded,
                              size: 47,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
