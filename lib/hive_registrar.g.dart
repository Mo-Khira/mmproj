// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'package:mmproj/features/home/domain/entities/book_entity.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(BookEntityAdapter());
  }
}
