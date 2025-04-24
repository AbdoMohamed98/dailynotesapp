
import 'package:hive/hive.dart';
part 'addnotemodel.g.dart';

@HiveType(typeId: 0)
class Addnotemodel {
   @HiveField(0)
  String title;
   @HiveField(1)
  String description;
   @HiveField(2)
  String date;
   @HiveField(3)
  int color;

  Addnotemodel({
    required this.title,
    required this.description,
    required this.date,
    required this.color,
  });

}