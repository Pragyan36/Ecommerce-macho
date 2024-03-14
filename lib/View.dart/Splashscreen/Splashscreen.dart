

import 'package:ecommerceshop/View.dart/Dashboard.dart';
import 'package:ecommerceshop/constant/Appcolor.dart';
import 'package:ecommerceshop/constant/Images_directory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) =>  Dashboard())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Color(0xfff9c6e56),
       body: Center(child: Container(
       height: 100.h,
       width: 100.w,
       
        child: Image.asset(AssetsImage.splashScreen))),
    );
  }
}