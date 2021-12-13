import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightGreen,
            ),
            child: Image.asset(AppImages.logoPng),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.green,
            ),
            child: Image.asset(AppImages.logoPng),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightGreen,
            ),
            child: Image.asset(AppImages.logoPng),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.green,
            ),
            child: Image.asset(AppImages.logoPng),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightGreen,
            ),
            child: Image.asset(AppImages.logoPng),
          ),
        ],
      ),
    );
  }
}
