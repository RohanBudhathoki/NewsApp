import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsapp/common/common_textbutton.dart';
import 'package:newsapp/common/sizebox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi Hafiz, \nWelcome Back!',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    CircleAvatar(
                      child: Image.asset('assets/image/avatar.png'),
                    )
                  ],
                ),
              ),
              const SpaceH32(),
              CommonAuthTextField(
                  hinttext: 'Search..', controller: searchController),
              const SpaceH24(),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Container(
                  height: 32.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Chip(
                          shape: StadiumBorder(
                              side: BorderSide(color: Color(0xffE7E7E7))),
                          backgroundColor: Colors.transparent,
                          label: Text(
                            'Filter',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: Color(0xff7A7A7A)),
                          )),
                      SpaceW12(),
                      Chip(
                          shape: StadiumBorder(
                              side: BorderSide(color: Color(0xffE7E7E7))),
                          backgroundColor: Colors.transparent,
                          label: Text(
                            'All',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: Color(0xff7A7A7A)),
                          )),
                      SpaceW12(),
                      Chip(
                          shape: StadiumBorder(
                              side: BorderSide(color: Color(0xffE7E7E7))),
                          backgroundColor: Colors.transparent,
                          label: Text(
                            'Following',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: Color(0xff7A7A7A)),
                          )),
                      SpaceW12(),
                      Chip(
                          shape: StadiumBorder(
                              side: BorderSide(color: Color(0xffE7E7E7))),
                          backgroundColor: Colors.transparent,
                          label: Text(
                            'Visual Design',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                color: Color(0xff7A7A7A)),
                          )),
                      SpaceW12(),
                    ],
                  ),
                ),
              ),
              SpaceH30(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Topics',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff0167FF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SpaceH28(),
              Stack(
                children: [
                  Container(
                    height: 182.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Image.asset('assets/image/card.png'),
                  ),
                  Positioned(
                    top: 91,
                    left: 16,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 73.h,
                          width: 295.w,
                          child: Row(
                            children: [
                              Text(
                                '7 steps to become a UI/UX designer',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SpaceH22(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomended For You',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff0167FF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SpaceH20(),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Row(
                  children: [
                    Container(
                      height: 91.h,
                      width: 91.w,
                      child: Image.asset('assets/image/smallCard.png'),
                    ),
                    SpaceW16(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Chip(
                            label: Text(
                          'UI/UX',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.sp,
                              color: Color(0xff0167FF)),
                        )),
                        Text('57 Key Lessons for UI & UX \nDesigners',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
