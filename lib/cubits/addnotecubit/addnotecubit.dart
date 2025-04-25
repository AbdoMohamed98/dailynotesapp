// Bloc Cubit
import 'package:dailynotes/cubits/addnotecubit/addnotestates.dart';
import 'package:dailynotes/models/addnotemodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';


class AddnoteCubit extends Cubit<Addnote> {
  AddnoteCubit() : super(AddnoteInitial());

  void addNote(String title, String content, Addnotemodel note) {
    emit(AddnoteLoading());
    try {
      var notesbox = Hive.box<Addnotemodel>('notesbox');
      notesbox.add(note);
      emit(AddnoteSuccess(success: "Note added successfully"));
    } catch (e) {
      if (title.isEmpty || content.isEmpty) {
        emit(AddnoteError(error: "Title and content cannot be empty"));
      } else {
        emit(AddnoteError(error: e.toString()));
      }
    }
  }
}
