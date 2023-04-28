import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:savita/utils/validator.dart';
import 'package:savita/views/welcome_screen.dart';
import 'package:savita/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff386641),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 44.w),
          child: Form(
            key: ValidatorMethods.signUpFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(50.h),
                TextWidget(
                    text: 'Enter your details to get started',
                    size: 20.h,
                    align: TextAlign.center,
                    color: Colors.white,
                    weight: FontWeight.w500),
                Gap(42.h),
                CustomTextField(
                    labelText: 'Phone',
                    formFieldValidator: (value) {
                      return ValidatorMethods().phoneValidator(value);
                    },
                    textInputType: TextInputType.number,
                    hinText: '+234 908 546 4322',
                    controller: ValidatorMethods.phoneNumbercontroller),
                Gap(20.h),
                CustomTextField(
                    labelText: 'Email',
                    formFieldValidator: (value) {
                      return ValidatorMethods().validateEmail(value);
                    },
                    textInputType: TextInputType.emailAddress,
                    hinText: 'example@gmail.com',
                    controller: ValidatorMethods.emailController),
                Gap(20.h),
                CustomTextField(
                    labelText: 'Password',
                    formFieldValidator: (value) {
                      return ValidatorMethods().validatePassword(value);
                    },
                    textInputType: TextInputType.text,
                    hinText: '*********',
                    controller: ValidatorMethods.passwordController),
                Gap(8.h),
                TextWidget(
                    text:
                        'By signing in you agree to our Terms of Service and Privacy Policy.',
                    size: 13.h,
                    align: TextAlign.justify,
                    color: Colors.white,
                    weight: FontWeight.w500),
                Gap(32.h),
                CustomButton(
                    title: 'Let\'s go',
                    onTap: () {
                      ValidatorMethods.signUpFormSubmit(context);
                    }),
                Gap(32.h),
                TextWidget(
                    text: 'or login with',
                    size: 16.h,
                    align: TextAlign.center,
                    color: Colors.white,
                    weight: FontWeight.w500),
                Gap(15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    Gap(12.w),
                    const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    Gap(12.w),
                    const FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
