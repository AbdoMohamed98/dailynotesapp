import 'package:flutter/material.dart';


class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    this.onSaved,
    this.maxLines,
    this.height, this.validator, this.hintText,
  });

  final int? maxLines;
  final double? height;
  final String? Function(String?)? validator;
  final String? hintText;
   final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    final bool hasFixedHeight = height != null;

    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextFormField(
        onSaved:onSaved ,
        
         validator:validator ,
         

        // ✅ Only supply minLines/maxLines when we are NOT expanding
        minLines: hasFixedHeight ? null : 1,
        maxLines: hasFixedHeight ? null : (maxLines ?? null),

        expands: hasFixedHeight,                // true only if we gave a height
        textAlignVertical: TextAlignVertical.top,
        style: const TextStyle(color: Colors.white),

        decoration:  InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

