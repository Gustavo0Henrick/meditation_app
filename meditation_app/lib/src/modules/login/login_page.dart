import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/src/modules/dashboard/dashboard_page.dart';
import 'package:meditation_app/src/modules/register/register_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  double opacity = 0;

  Future<void> _opacityAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      opacity = 1;
    });
  }

  void _goToResgiter() {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (builder) => const RegisterPage(),
        ));
  }

  void _goToDashboard() {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (builder) => const DashboardPage(),
        ));
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
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.darkGreen,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  width: size.width,
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.logoMini2Png,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: AppFonts.alegreyaRegular30white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270,
              left: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  width: 400,
                  child: const Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Sign in now to acces your excercises and saved music.',
                      textAlign: TextAlign.left,
                      style: AppFonts.alegreyaRegular22white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 360,
              left: 30,
              right: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  width: 400,
                  child: TextFormField(
                    style: const TextStyle(
                      color: AppColors.greyGreen,
                    ),
                    controller: emailController,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyGreen,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyGreen,
                        ),
                      ),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: AppColors.greyGreen),
                    ),
                    cursorColor: AppColors.greyGreen,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 420,
              left: 30,
              right: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  width: 400,
                  child: TextFormField(
                    style: const TextStyle(
                      color: AppColors.greyGreen,
                    ),
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyGreen,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.greyGreen,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: AppColors.greyGreen),
                    ),
                    cursorColor: AppColors.greyGreen,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 480,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  print('Forgot Password');
                },
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.decelerate,
                  child: Container(
                    width: 400,
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: AppFonts.alegreyaRegular14white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 540,
              child: InkWell(
                onTap: () => _goToDashboard(),
                borderRadius: BorderRadius.circular(10),
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.decelerate,
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.green,
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: AppFonts.alegreyaRegular25white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 160,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: GestureDetector(
                  onTap: () => _goToResgiter(),
                  child: Container(
                    height: 60,
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Don't have an account? ",
                          style: AppFonts.alegreyaRegular20white,
                        ),
                        Text(
                          "Sign Up",
                          style: AppFonts.alegreyaBold20white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 180,
              child: Image.asset(
                AppImages.leafPng,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
