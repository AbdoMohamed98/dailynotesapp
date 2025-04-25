
import 'package:dailynotes/core/navigation/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';



class Notescard extends StatelessWidget {
  const Notescard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Approutes.editnoteview);
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          top: 10.h,
          bottom: 1.h,
        ),
        child: Container(
          height: 150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow, // Set background color here
            borderRadius: BorderRadius.circular(10.r), // Optional
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  style: ListTileStyle.drawer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'Title',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Text(
                      'Subtitle',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                          'date',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13.sp,
                          ),
                        ),
                    ),
                  ],
                ),
               
              
            ],
          ),
        ),
      ),
    );
  }
}
