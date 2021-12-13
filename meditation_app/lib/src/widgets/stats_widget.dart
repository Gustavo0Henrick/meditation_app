import 'package:flutter/material.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({Key? key}) : super(key: key);

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

bool _initialValue = true;

class _StatsWidgetState extends State<StatsWidget> {
  Future<void> _animationBars() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      _initialValue = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _animationBars();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.darkGreen,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: size.width * 0.66,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("This Week’s Stats", style: AppFonts.alegreya12white),
                    Opacity(
                        opacity: 0.5,
                        child:
                            Text('Show All', style: AppFonts.alegreya12white)),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('999', style: AppFonts.alegreya12white),
                        Text('799', style: AppFonts.alegreya12white),
                        Text('599', style: AppFonts.alegreya12white),
                        Text('399', style: AppFonts.alegreya12white),
                        Text('199', style: AppFonts.alegreya12white),
                        Text('0', style: AppFonts.alegreya12white),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 230,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                                Text(
                                    '------------------------------------------------------',
                                    style: AppFonts.alegreya12white),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 12,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 35,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 32,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 28,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 52,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 75,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 73,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 45,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 92,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 65,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 112,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 90,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 130,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 150,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 148,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 70,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 167,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 102,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 185,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 50,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 202,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 130,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 220,
                        child: Opacity(
                          opacity: 0.3,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                            height: _initialValue ? 0 : 105,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 238,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          height: _initialValue ? 0 : 180,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.lightGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Mon', style: AppFonts.alegreya12white),
                      Text('Tue', style: AppFonts.alegreya12white),
                      Text('Wed', style: AppFonts.alegreya12white),
                      Text('Thu', style: AppFonts.alegreya12white),
                      Text('Fri', style: AppFonts.alegreya12white),
                      Text('Sat', style: AppFonts.alegreya12white),
                      Text('Sun', style: AppFonts.alegreya12white),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
