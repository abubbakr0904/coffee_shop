import 'package:coffee_shop/utils/colors/app_colors.dart';
import 'package:coffee_shop/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 450.h,
                child: Stack(
                  children: [
                    Image.asset(AppImages.twoCoffeeBig,
                        height: 450.h, fit: BoxFit.cover),
                    Container(
                      height: 450.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.all(20.w),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.r)),
                                    color: Colors.black),
                                padding: EdgeInsets.all(10.w),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              )),
                          Container(
                              color: Colors.blueGrey.withOpacity(0.3),
                              padding: EdgeInsets.all(20.w),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Cappucino",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: AppImages.basleyFont,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24.sp),
                                      ),
                                      Text(
                                        "4.6 (1,250)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: AppImages.basleyFont,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "With Chocolate",
                                        style: TextStyle(
                                            color: Colors.white.withOpacity(0.7),
                                            fontFamily: AppImages.interFont,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.sp),
                                      ),
                                      Text(
                                        " ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: AppImages.basleyFont,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "120.000",
                                        style: TextStyle(
                                          color: const Color(0xFFD17842),
                                          fontSize: 28.sp,
                                          fontFamily: AppImages.basleyFont,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8.h, horizontal: 16.w),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                color: const Color(0xFFD17842)),
                                            child: Text(
                                              "Add to card",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.sp,
                                                fontFamily: AppImages.interFont,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppImages.basleyFont),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Read more",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppImages.interFont),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Size",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppImages.basleyFont),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      c = 1;
                      setState(() {
          
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40.w , vertical: 8.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.r)
                          ),
                          border: Border.all(
                              width: 1,
                              color : c == 1 ? const Color(0xFFD17842) : Colors.white
                          )
                      ),
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: c == 1 ? const Color(0xFFD17842) : Colors.white,
                            fontFamily: AppImages.interFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      c = 2;
                      setState(() {
          
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40.w , vertical: 8.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.r)
                          ),
                          border: Border.all(
                              width: 1,
                              color : c == 2 ? const Color(0xFFD17842) : Colors.white
                          )
                      ),
                      child: Text(
                        "M",
                        style: TextStyle(
                            color: c == 2 ? const Color(0xFFD17842) : Colors.white,
                            fontFamily: AppImages.interFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      c = 3;
                      setState(() {
          
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40.w , vertical: 8.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.r)
                          ),
                          border: Border.all(
                              width: 1,
                              color : c == 3 ? const Color(0xFFD17842) : Colors.white
                          )
                      ),
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: c == 3 ? const Color(0xFFD17842) : Colors.white,
                            fontFamily: AppImages.interFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child : Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color : const Color(0xFFD17842)
                  ),
                  width: double.infinity,
                  child : Center(
                    child: Text("Buy now" , style: TextStyle(
                      color : Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      fontFamily: AppImages.interFont
                    ),),
                  )
                )
              )
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
