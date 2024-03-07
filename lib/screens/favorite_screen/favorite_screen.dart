import 'package:coffee_shop/utils/colors/app_colors.dart';
import 'package:coffee_shop/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key, required this.cofee});

  final List<String> cofee;

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            widget.cofee.length,
            (index) => Text(
              widget.cofee[index],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontFamily: AppImages.basleyFont,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.bgColor,
    );
  }
}
