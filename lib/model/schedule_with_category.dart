import 'package:calender_scheduler/database/drift.dart';
import 'package:calender_scheduler/model/category.dart';
import 'package:calender_scheduler/model/schedule.dart';

class ScheduleWithCategory {
  final CategoryTableData category;
  final ScheduleTableData schedule;

  ScheduleWithCategory({required this.category, required this.schedule});
}
