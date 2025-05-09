import 'package:hive/hive.dart';
part 'addnotemodel.g.dart';
@HiveType(typeId: 1)
class Addnotemodel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  Addnotemodel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}
