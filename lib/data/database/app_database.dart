import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dao/hero_dao.dart';
import 'entity/hero_database_entity.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [HeroDatabaseEntity])
abstract class AppDatabase extends FloorDatabase {
  HeroDao get heroDao;
}
