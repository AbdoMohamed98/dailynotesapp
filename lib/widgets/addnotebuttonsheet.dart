import 'package:dailynotesapp/widgets/customelevatedbutton.dart';
import 'package:dailynotesapp/widgets/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addnotebuttonsheet extends StatefulWidget {
   const Addnotebuttonsheet({super.key});

  @override
  State<Addnotebuttonsheet> createState() => _AddnotebuttonsheetState();
}

class _AddnotebuttonsheetState extends State<Addnotebuttonsheet> {
     GlobalKey<FormState> formkey = GlobalKey();
      String? title , subtitle;
      AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Container(
        height: 400.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Customtextformfield(
              onsaved:(value){
                title = value;
              } ,
            ),
            SizedBox(height: 20.h),
            Customtextformfield(
              onsaved:(value){
                subtitle = value;
              } ,
            ),
            Spacer(flex: 1,),
            Customelevatedbutton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState?.save();
                  // Perform your action here
                }
                else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}