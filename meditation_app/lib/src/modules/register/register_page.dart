import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/src/modules/login/login_page.dart';
import 'package:meditation_app/src/themes/app_colors.dart';
import 'package:meditation_app/src/themes/app_fonts.dart';
import 'package:meditation_app/src/themes/app_images.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  double opacity = 0;

  Future<void> _opacityAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      opacity = 1;
    });
  }

  void _goToLogin() {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (builder) => const LoginPage(),
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
              top: 15,
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
              top: 200,
              left: 30,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 800),
                curve: Curves.decelerate,
                child: Container(
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: AppFonts.alegreyaRegular30white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
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
                      'Sign up now for free and start meditating, and explore Medic.',
                      textAlign: TextAlign.left,
                      style: AppFonts.alegreyaRegular22white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 330,
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
                    controller: nameController,
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
                      hintText: 'Name',
                      hintStyle: TextStyle(color: AppColors.greyGreen),
                    ),
                    cursorColor: AppColors.greyGreen,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
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
              top: 470,
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
              top: 540,
              child: InkWell(
                onTap: () {
                  print('teste');
                },
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
                        'SIGNUP',
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
                  onTap: () => _goToLogin(),
                  child: Container(
                    height: 60,
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Already have an account? ",
                          style: AppFonts.alegreyaRegular20white,
                        ),
                        Text(
                          "Sign In",
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
