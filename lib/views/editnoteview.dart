import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w, right: 10.w),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Edit Note',style: TextStyle(
            color: Colors.white,
          ),),actions: [
            Icon(Icons.check_box)
          ],
          
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: 20.h,bottom: 100.h),
          child: SingleChildScrollView(
            child: Column(children: [
            // Customtextformfield(),
            // Customtextformfield(),
            ],),
          ),
        )
      ),
    );
  }
}