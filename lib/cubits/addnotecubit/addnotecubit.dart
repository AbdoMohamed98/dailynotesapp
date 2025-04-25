// Bloc Cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud/cubits/addnotecubit/addnotestates.dart';


class AddnoteCubit extends Cubit<Addnote> {
  AddnoteCubit() : super(AddnoteInitial());

  void addNote(String title, String content) {
    if (title.isEmpty || content.isEmpty) {
      emit(AddnoteError(error: "Title and content cannot be empty"));
    } else {
      emit(AddnoteSuccess(success: "Note added successfully"));
    }
  }
}
