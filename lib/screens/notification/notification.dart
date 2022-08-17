import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/common/sizebox.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notification',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Mark as read',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0167FF)),
                  )
                ],
              ),
            ),
            SpaceH32(),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                'Today',
                style: TextStyle(
                    color: Color(0xffB7B7B7),
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SpaceH16(),
            Container(
              padding: EdgeInsets.fromLTRB(24.w, 24.h, 0.w, 24.h),
              color: Color(0xffE7E7E7),
              height: 112.h,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffE7F0F9),
                    child: Image.asset('assets/image/discount.png'),
                  ),
                  SpaceW16(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo 20% Premium Membership',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp),
                      ),
                      Text(
                        "Get 20% promo membership don't miss it",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp),
                      ),
                      Row(
                        children: [
                          Text(
                            'Buy Now',
                            style: TextStyle(
                                color: Color(0xff0167FF),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp),
                          ),
                          Image.asset('assets/image/arrowright.png')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SpaceH32(),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                'Yesterday',
                style: TextStyle(
                    color: Color(0xffB7B7B7),
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SpaceH26(),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffFAFAFA),
                            child: Image.asset('assets/image/file.png'),
                          ),
                          SpaceW16(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New Post Kawalan',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Check new post Kawalan about step UX Designer',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '6:25 am',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SpaceH32()
                            ],
                          ),
                        ],
                      );
                    }),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
