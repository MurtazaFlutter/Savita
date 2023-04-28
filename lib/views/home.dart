import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:savita/views/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 50.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Gap(38.h),
              SizedBox(
                height: 150.h,
                width: double.infinity,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Image.asset('lib/assets/images/promotion.png');
                  },
                  autoplay: true,
                  pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.grey, activeColor: Colors.green)),
                ),
              ),
              Gap(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Popular items',
                      size: 20.h,
                      align: TextAlign.start,
                      color: Colors.black,
                      weight: FontWeight.w600),
                  SvgPicture.asset('lib/assets/icons/arrow.svg'),
                ],
              ),
              Gap(30.h),
              ListView.builder(
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  // physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  //scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: const PopularProducts(),
                    );
                  })),
              Gap(25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Popular items',
                      size: 20.h,
                      align: TextAlign.start,
                      color: Colors.black,
                      weight: FontWeight.w600),
                  SvgPicture.asset('lib/assets/icons/arrow.svg'),
                ],
              ),
              Gap(30.h),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: const PopularProducts(),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        color: const Color(0xff18D72B),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    text: 'THC 20%',
                    size: 12.h,
                    align: TextAlign.start,
                    color: Colors.black,
                    weight: FontWeight.w400),
                TextWidget(
                    text: 'THC 20%',
                    size: 12.h,
                    align: TextAlign.start,
                    color: Colors.black,
                    weight: FontWeight.w400),
              ],
            ),
            Gap(5.h),
            Center(child: Image.asset('lib/assets/images/image1.png')),
            Gap(5.h),
            TextWidget(
                text: 'Walker Kush',
                size: 14.h,
                align: TextAlign.start,
                color: Colors.black,
                weight: FontWeight.w500),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    text: 'HYBRID',
                    size: 12.h,
                    align: TextAlign.start,
                    color: Colors.white,
                    weight: FontWeight.w500),
                TextWidget(
                    text: '\$76/G',
                    size: 12.h,
                    align: TextAlign.start,
                    color: Colors.white,
                    weight: FontWeight.w500),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('lib/assets/images/profile.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: 'Hello Adrian',
                size: 16.h,
                align: TextAlign.justify,
                color: Colors.black,
                weight: FontWeight.w600),
            TextWidget(
                text: '10, Glover blvd,lekki,lagos',
                size: 14.h,
                align: TextAlign.justify,
                color: Colors.black54,
                weight: FontWeight.w600),
          ],
        ),
        const Icon(Icons.notifications),
        const Icon(Icons.more_vert)
      ],
    );
  }
}
