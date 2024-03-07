import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_shop/screens/about_cofee_screen/about_cofee_screen.dart';
import 'package:coffee_shop/screens/favorite_screen/favorite_screen.dart';
import 'package:coffee_shop/utils/colors/app_colors.dart';
import 'package:coffee_shop/utils/images/images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cofeeName = [
    "All",
    "Cappucino",
    "Latte",
    "Espresso",
    "Americano",
    "Mocha"
  ];
  List<String> coffeType = [
    "Sutli",
    "Shakarli",
    "Ice",
    "IceLatte",
    "Qaymoqli",
    "Kam Shskarli",
    "Milk shake"
  ];
  List<String> addCoffee = [];
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Drawer(
                            child: Text("Salom sanabar"),
                          );
                        },
                        child: SvgPicture.asset(AppImages.burger)),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AppImages.search),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Favorite(cofee: addCoffee)));
                          },
                          icon: SvgPicture.asset(AppImages.hearth),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "home.title".tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontFamily: AppImages.basleyFont,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => geCard(),
                      )
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Popular Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppImages.basleyFont,
                    fontSize: 24.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        cofeeName.length,
                        (index) => GestureDetector(
                          onTap: () {
                            c = index;
                            setState(() {

                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5.w),
                            margin: EdgeInsets.symmetric(horizontal : 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.r)
                              ),
                              border: Border.all(
                                width: 1,
                                color : c == index ? Colors.white : Colors.transparent
                              )
                            ),
                            child: Text(
                              cofeeName[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppImages.interFont,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              SizedBox(
                height: 1000.h,
                width: double.infinity,
                child: GridView.count(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  children: [
                    ...List.generate(coffeType.length, (index) => GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const About()));
                        },
                        child: littleCard(text: coffeType[index] , cofe: addCoffee))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}

Widget geCard() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: Colors.white.withOpacity(0.05)),
    padding: EdgeInsets.all(8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.twoCoffee, width: 240, fit: BoxFit.cover),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Cappucino",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontFamily: AppImages.basleyFont,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "home.type_coffee".tr(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
            fontFamily: AppImages.basleyFont,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "35.000",
                style: TextStyle(
                  color: const Color(0xFFD17842),
                  fontSize: 28.sp,
                  fontFamily: AppImages.basleyFont,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 90.w,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.r)),
                        color: const Color(0xFFD17842)),
                    child: SvgPicture.asset(AppImages.plus)),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget littleCard({
  required String text,
  required List cofe
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
        color: Colors.white.withOpacity(0.05)),
    padding: EdgeInsets.all(8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.twoCoffee, width: 240, fit: BoxFit.cover),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Cappucino",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontFamily: AppImages.basleyFont,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 8.sp,
            fontFamily: AppImages.basleyFont,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "35.000",
                style: TextStyle(
                  color: const Color(0xFFD17842),
                  fontSize: 18.sp,
                  fontFamily: AppImages.basleyFont,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  cofe.add(text);
                },
                child: Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.r)),
                        color: const Color(0xFFD17842)),
                    child: SvgPicture.asset(AppImages.plus)),
              )
            ],
          ),
        )
      ],
    ),
  );
}
