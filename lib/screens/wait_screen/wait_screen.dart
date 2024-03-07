import 'package:coffee_shop/screens/language_screen/language_screen.dart';
import 'package:coffee_shop/utils/images/images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Wait extends StatefulWidget {
  const Wait({super.key});

  @override
  State<Wait> createState() => _WaitState();
}

class _WaitState extends State<Wait> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Language();
            },
          ),
        );
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    double ph = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body : Container(
        width: pw,
        height: ph,
        child: Center(
          child : Lottie.asset(AppImages.lottie , width: pw , fit : BoxFit.cover)
        ),
      )
    );
  }
}
