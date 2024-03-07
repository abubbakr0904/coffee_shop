import "package:coffee_shop/screens/on_boarding_screen/on_boarding.dart";
import "package:coffee_shop/utils/colors/app_colors.dart";
import "package:coffee_shop/utils/images/images.dart";
import "package:easy_localization/easy_localization.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    double ph = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: pw,
          height: ph,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose language",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.sp,
                    fontFamily: AppImages.interFont),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                  onTap: () {
                    context.setLocale(const Locale("uz", "UZ"));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Center(
                        child: Text(
                      "Uzbek",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppImages.interFont),
                    )),
                  )),
              SizedBox(height: 20.h,),
              GestureDetector(
                  onTap: () {
                    context.setLocale(const Locale("ru", "RU"));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Center(
                        child: Text(
                          "Русский",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppImages.interFont),
                        )),
                  )),
              SizedBox(height: 20.h,),
              GestureDetector(
                  onTap: () {
                    context.setLocale(const Locale("eng", "ENG"));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Center(
                        child: Text(
                          "English",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppImages.interFont),
                        )),
                  )),
            ],
          )),
      backgroundColor: AppColors.bgColor,
    );
  }
}
