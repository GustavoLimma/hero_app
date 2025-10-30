import 'package:floor/floor.dart';
import '../entity/hero_database_entity.dart';

@dao
abstract class HeroDao {
  @Query('SELECT * FROM HeroDatabaseEntity')
  Future<List<HeroDatabaseEntity>> getAllHeroes();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHero(HeroDatabaseEntity hero);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertHeroes(List<HeroDatabaseEntity> heroes);

  @Query('DELETE FROM HeroDatabaseEntity')
  Future<void> deleteAllHeroes();
}
