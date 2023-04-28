import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:savita/views/welcome_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: TextWidget(
                text: 'All Categories',
                size: 20.h,
                align: TextAlign.start,
                color: Colors.black,
                weight: FontWeight.w700)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffD9D9D9),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    hintText: 'Browse for anything...'),
              ),
              Gap(25.h),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 19,
                            crossAxisSpacing: 19),
                    itemBuilder: ((context, index) {
                      return const Category();
                    })),
              )
            ],
          ),
        ));
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 158.w,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
              text: 'Pre Rools',
              size: 20.h,
              align: TextAlign.start,
              color: const Color(0xffBC4749),
              weight: FontWeight.w600),
          Image.asset('lib/assets/images/rools.png'),
        ],
      ),
    );
  }
}
