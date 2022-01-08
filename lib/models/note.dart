import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'note.g.dart';

@HiveType(typeId: 0)
class Note {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? description;
  @HiveField(2)
  String? imageUrl;
  @HiveField(3)
  String? date;
  @HiveField(4)
  String? time;

  Note({
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.date,
    @required this.time,
  });
}
