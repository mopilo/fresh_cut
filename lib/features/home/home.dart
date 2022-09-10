import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              // Header
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(colors: [
                    Color(0xFFF2BC3D),
                    Color(0xFFD93636),
                  ]).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    "Trending Today",
                    style: TextStyle(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'AktivGrotesk'),
                  ),
                ),
                Text(
                  " 🔥",
                  style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'AktivGrotesk'),
                )
              ]),
              SizedBox(height: 34.h),
              item(
                  const Color(0xfff2bc3d),
                  const Color(0xff28262c),
                  "assets/1.png",
                  "Trending Today",
                  "+10 New Videos",
                  "15/30",
                  0.5),
              SizedBox(height: 32.h),

              item(
                  const Color(0xffA823EA),
                  const Color(0xff28262c),
                  "assets/2.png",
                  "Trending Today",
                  "+18 New Videos",
                  "0/18",
                  0.0),
              SizedBox(height: 32.h),

              item(
                  const Color(0xffCB0912),
                  const Color(0xff28262c),
                  "assets/3.png",
                  "Valorant Volume",
                  "+21 New Videos",
                  "21/21",
                  1.0),
              SizedBox(height: 46.h),

              Image.asset("assets/verify.png"),
              Text(
                "Check back soon for new clips and creator content.",
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.2,
                    fontFamily: 'AktivGrotesk'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                "In the meantime join our discord.",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffA19DAA),
                    fontFamily: 'AktivGrotesk'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              //Button
              Container(
                alignment: Alignment.center,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56.r),
                  border: GradientBoxBorder(
                    gradient: LinearGradient(colors: [
                      const Color(0xffF2BC3D).withOpacity(.4),
                      const Color(0xff392904).withOpacity(0.4),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    width: 1,
                  ),
                  gradient: LinearGradient(colors: [
                    const Color(0xffF2BC3D).withOpacity(.4),
                    const Color(0xff392904).withOpacity(0.4),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/discord.svg"),
                    SizedBox(width: 9.5.w),
                    Text(
                      "Join Metaview Discord",
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'AktivGrotesk'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(
      firstColor, secondColor, img, title, videoCount, viewCount, track) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(colors: [
                firstColor.withOpacity(.2),
                secondColor.withOpacity(0.2)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              width: 1,
            ),
            gradient: LinearGradient(colors: [
              firstColor.withOpacity(.2),
              secondColor.withOpacity(0.2),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(32.r),
          ),
          height: 403.h,
          width: 345.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Image.asset(
                    img,
                    height: 288.h,
                    width: 321.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'AktivGrotesk',
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videoCount,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'AktivGrotesk',
                          color: const Color(0xffF2BC3D)),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/eye.svg",
                      height: 12.h,
                      width: 12.w,
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      viewCount,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'AktivGrotesk',
                          color: const Color(0xff8C8797)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                  child: LinearProgressIndicator(
                    value: track,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Color(0xffF2BC3D)),
                    backgroundColor: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 71.h,
          right: 32.w,
          child: Container(
            height: 64.h,
            width: 64.w,
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                color: Colors.red.withOpacity(0.15),
                shape: BoxShape.circle),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Padding(
                padding: EdgeInsets.only(left: 4.0.w, top: 4.h),
                child: SvgPicture.asset(
                  "assets/play.svg",
                  width: 180.w,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
