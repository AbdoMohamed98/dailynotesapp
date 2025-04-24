import 'package:flutter/material.dart';

class Customelevatedbutton extends StatelessWidget {
   const Customelevatedbutton({super.key,required this.onPressed});
  final void Function()? onPressed;

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
        child: const Text('hello'),
      ),
    );
  }
}