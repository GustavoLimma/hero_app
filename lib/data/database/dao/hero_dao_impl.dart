import '../entity/hero_database_entity.dart';
import 'hero_dao.dart';

class HeroDaoImpl implements HeroDao {
  final List<HeroDatabaseEntity> _storage = [];

  @override
  Future<void> insertHero(HeroDatabaseEntity hero) async {
    _storage.removeWhere((h) => h.id == hero.id); 
    _storage.add(hero);
  }

  @override
  Future<void> insertHeroes(List<HeroDatabaseEntity> heroes) async {
    for (var hero in heroes) {
      await insertHero(hero);
    }
  }

  @override
  Future<List<HeroDatabaseEntity>> getAllHeroes() async {
    return List.unmodifiable(_storage);
  }

  @override
  Future<void> deleteAllHeroes() async {
    _storage.clear();
  }
}
