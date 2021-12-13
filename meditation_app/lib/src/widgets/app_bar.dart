import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/src/modules/draw_menu/draw_menu.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';
import 'package:page_transition/page_transition.dart';

class AppBarAvatar extends StatefulWidget {
  int? indexMenu;
  var onTap;
  AppBarAvatar({Key? key, this.indexMenu, this.onTap}) : super(key: key);

  @override
  State<AppBarAvatar> createState() => _AppBarAvatarState();
}

class _AppBarAvatarState extends State<AppBarAvatar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRightWithFade,
                          child: const DrawMenu(),
                          inheritTheme: true,
                          ctx: context,
                          curve: Curves.decelerate,
                        ));
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Center(child: SvgPicture.asset(AppImages.menuSvg)),
                  ),
                ),
                SvgPicture.asset(AppImages.logoHomeSvg),
                widget.indexMenu == 2
                    ? Container(
                        width: 40,
                        child: const Text('edit',
                            style: AppFonts.alegreyaRegular15white),
                      )
                    : InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: widget.onTap,
                        child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Image.asset(AppImages.photoPng),
                          radius: 20,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
