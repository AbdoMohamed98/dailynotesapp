import 'package:flutter/material.dart';

class Customelevatedbutton extends StatelessWidget {
   const Customelevatedbutton({super.key,required this.onPressed, this.maxLines, this.buttontext});
  final void Function()? onPressed;
   final int? maxLines;
   final String? buttontext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        
        onPressed: onPressed,
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.amber),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
        ),
        child: Text(buttontext?? '' ,
        ),
      ),
    );
  }
}