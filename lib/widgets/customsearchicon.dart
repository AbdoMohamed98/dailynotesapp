import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customsearchicon extends StatelessWidget {
  const Customsearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white.withOpacity(0.1),
            ),
            height: 40.h,
            width: 40.w,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          );
  }
}