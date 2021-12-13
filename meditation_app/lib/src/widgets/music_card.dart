import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Image.asset(
            AppImages.relaxSoundPng,
            fit: BoxFit.fill,
          ),
          const Positioned(
            top: 40,
            left: 30,
            child: Text(
              'Relax Sounds',
              style: AppFonts.alegreyaRegular27white,
            ),
          ),
          Positioned(
            top: 80,
            left: 30,
            child: Opacity(
              opacity: 0.9,
              child: Container(
                width: 220,
                child: const Text(
                  'Sometimes the most productive thing you can do is relax.',
                  style: AppFonts.alegreyaRegular15white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 135,
            left: 30,
            child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'play now',
                      style: AppFonts.alegreyaRegular15black,
                    ),
                    SvgPicture.asset(AppImages.miniPlayBlackSvg)
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
