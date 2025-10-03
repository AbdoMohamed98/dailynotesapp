import 'package:dailynotes/cubits/addnotecubit/addnotecubit.dart';
import 'package:dailynotes/models/addnotemodel.dart';
import 'package:dailynotes/widgets/customelevatedbutton.dart';
import 'package:dailynotes/widgets/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
// make sure to import this

class Addnoteform extends StatefulWidget {
  const Addnoteform({super.key});

  @override
  State<Addnoteform> createState() => _AddnoteformState();
}

class _AddnoteformState extends State<Addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
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
            SizedBox(height: 20.h),
            Customtextformfield(
              validator: (data) {
                if (data == null || data.isEmpty) {
                  return 'Please enter title';
                }
                return null;
              },
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 20.h),
            Customtextformfield(
              validator: (data) {
                if (data == null || data.isEmpty) {
                  return 'Please enter subtitle';
                }
                return null;
              },
              onSaved: (value) {
                subtitle = value;
              },
              maxLines: 4,
            ),
            const Spacer(),
            Customelevatedbutton(
              buttontext: 'Add',
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save(); 
                  context.read<AddnoteCubit>().addNote(
                    Addnotemodel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateFormat.yMMMd().format(DateTime.now()),
                      color: Colors.blue.value, // can later use a picker
                    ),
                  );
// ✅ first save

                  final note = Addnotemodel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateFormat.yMMMd().format(DateTime.now()),
                    color: Colors.blue.value, // can later use a picker
                  );

                  // TODO: call BlocCubit here to add note
                  // context.read<AddnoteCubit>().addNote(note);

                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
