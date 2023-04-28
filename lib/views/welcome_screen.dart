import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savita/views/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/images/back.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'Savita',
                  color: Colors.white,
                  align: TextAlign.center,
                  weight: FontWeight.w800,
                  size: 64.h,
                ),
                TextWidget(
                  text:
                      'Get connected to the \nbest on wheel cannabis \nin your local area',
                  color: Colors.white,
                  align: TextAlign.justify,
                  weight: FontWeight.w400,
                  size: 16.h,
                ),
                Gap(76.h),
                CustomButton(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SignUpScreen()))),
                  title: 'Get Started',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 247.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.h),
        ),
        child: Center(
          child: TextWidget(
              text: title,
              size: 16.h,
              align: TextAlign.center,
              color: Colors.black,
              weight: FontWeight.w600),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign align;
  final Color color;
  final FontWeight weight;

  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.align,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
