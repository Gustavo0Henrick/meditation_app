import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/src/modules/login/login_page.dart';
import 'package:meditation_app/src/modules/register/register_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _goToResgiter() {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (builder) => const RegisterPage(),
        ));
  }

  Future<void> _logoAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacity = 1;
    });
    _positionAnimation();
  }

  Future<void> _positionAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      initialPosition = 20;
    });
    await Future.delayed(const Duration(milliseconds: 800));
    setState(() {
      onboardingOpacity = 1;
      visible = true;
    });
  }

  void _toLogin() {
    Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (builder) => LoginPage(),
        ));
  }

  @override
  void initState() {
    super.initState();
    _logoAnimation();
  }

  double opacity = 0;
  bool visible = false;
  double onboardingOpacity = 0;
  double initialPosition = 120;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 800),
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  AppImages.backgroundPng,
                  fit: BoxFit.fill,
                ),
              ),
              AnimatedPositioned(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 800),
                top: initialPosition,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: opacity,
                  curve: Curves.decelerate,
                  child: Container(
                    child: Image.asset(
                      AppImages.logoPng,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 350,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: onboardingOpacity,
                  curve: Curves.decelerate,
                  child: const Text(
                    'WELCOME',
                    style: AppFonts.alegreyaBold34white,
                  ),
                ),
              ),
              Positioned(
                bottom: 260,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: onboardingOpacity,
                  curve: Curves.decelerate,
                  child: Container(
                    width: 280,
                    height: 80,
                    child: const Text(
                      'Do meditation. Stay focused. Live a healthy life.',
                      textAlign: TextAlign.center,
                      style: AppFonts.alegreyaRegular20white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 90,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: onboardingOpacity,
                  curve: Curves.decelerate,
                  child: InkWell(
                    onTap: () => _toLogin(),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.green,
                      ),
                      child: const Center(
                        child: Text(
                          'Login With Email',
                          style: AppFonts.alegreyaRegular25white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 800),
                  opacity: onboardingOpacity,
                  curve: Curves.decelerate,
                  child: Row(
                    children: [
                      const Text(
                        'Don’t have an account? ',
                        style: AppFonts.alegreyaRegular20white,
                      ),
                      GestureDetector(
                        onTap: () => _goToResgiter(),
                        child: const Text(
                          'Sign Up',
                          style: AppFonts.alegreyaBold20white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
