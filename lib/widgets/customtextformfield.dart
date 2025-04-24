import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextformfield extends StatelessWidget {
   const Customtextformfield({super.key,required this.onsaved});
 final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 300.h,
      child: TextFormField(
        onSaved:onsaved ,
        validator: (value) {
          if (value?.isEmpty?? true) {
            return 'Please enter a note';
          } else {
            return null;
          }
        },
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
        ),
        maxLines: 3,
        decoration: InputDecoration(
      
          hintText: 'hello',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
          fillColor: Colors.amber,border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10.r),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}