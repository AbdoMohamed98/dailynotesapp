// State classes
abstract class Addnote {}

class AddnoteInitial extends Addnote {}

class AddnoteLoading extends Addnote {}

class AddnoteError extends Addnote {
  final String error;
  AddnoteError({required this.error});
}

class AddnoteSuccess extends Addnote {
  final String success;
  AddnoteSuccess({required this.success});
}
