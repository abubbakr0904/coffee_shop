import 'package:coffee_shop/screens/home_screen/home_screen.dart';
import 'package:coffee_shop/utils/colors/app_colors.dart';
import 'package:coffee_shop/utils/images/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AppImages.onBoardCoffee,
                width: double.infinity, fit: BoxFit.cover),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "home.on_boarding".tr(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontFamily: AppImages.basleyFont,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Text(
                    "home.on_boarding_button".tr(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppImages.interFont,
                        fontSize: 18.sp),
                  ),
                ))
          ],
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
