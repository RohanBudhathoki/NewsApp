import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/common/sizebox.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset('assets/image/more.png')
                ],
              ),
            ),
            SpaceH21(),
            Container(
              height: 108.h,
              width: 108.w,
              child: CircleAvatar(
                child: Image.asset('assets/image/profile.png'),
              ),
            ),
            SpaceH16(),
            Text(
              'Stefan Janoski',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
            SpaceH8(),
            Chip(label: Text('free membership')),
            Container(),
            
          ],
        ),
      ),
    ));
  }
}
