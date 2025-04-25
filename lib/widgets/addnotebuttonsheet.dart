import 'package:dailynotes/cubits/addnotecubit/addnotecubit.dart';
import 'package:dailynotes/cubits/addnotecubit/addnotestates.dart';
import 'package:dailynotes/widgets/addnoteform.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as models;
import 'package:flutter_bloc/flutter_bloc.dart';

class Addnotebuttonsheet extends StatefulWidget {
  const Addnotebuttonsheet({super.key});

  @override
  State<Addnotebuttonsheet> createState() => _AddnotebuttonsheetState();
}

class _AddnotebuttonsheetState extends State<Addnotebuttonsheet> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddnoteCubit,Addnote>(
      listener: (context, state) {
        if (state is AddnoteSuccess) {
          Navigator.pop(context);
        }
        
      },
      builder: (BuildContext context, Object? state) { 
        if (state is AddnoteLoading) {
          return const Center(
            child: models.CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        } else if (state is AddnoteError) {
          return Center(
            child: Text(state.error),
          );
        }
        return  Addnoteform();},);}}
 
