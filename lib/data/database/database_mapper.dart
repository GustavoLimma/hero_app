import 'package:super_hero_app/data/database/entity/hero_database_entity.dart';
import 'package:super_hero_app/domain/exception/mapper_exception.dart';
import 'package:super_hero_app/domain/hero.dart';


class DatabaseMapper {
  //Converte HeroDatabaseEntity em HeroEntity 
  HeroEntity toHero(HeroDatabaseEntity entity) {
    try {
      return HeroEntity(
        id: entity.id,
        name: entity.name,
        slug: entity.slug,
        powerstats: Powerstats(
          intelligence: entity.intelligence,
          strength: entity.strength,
          speed: entity.speed,
          durability: entity.durability,
          power: entity.power,
          combat: entity.combat,
        ),
        images: Images(
          xs: entity.imageXs,
          sm: entity.imageSm,
          md: entity.imageMd,
          lg: entity.imageLg,
        ),
      );
    } catch (e) {
      throw MapperException('Erro ao mapear');
    }
  }

  //Converte lista de HeroDatabaseEntity em lista de HeroEntity
  List<HeroEntity> toHeroes(List<HeroDatabaseEntity> entities) {
    return entities.map(toHero).toList();
  }

  //Converte HeroEntity em HeroDatabaseEntity (para salvar no DB)
  HeroDatabaseEntity toHeroDatabaseEntity(HeroEntity hero) {
    try {
      return HeroDatabaseEntity(
        id: hero.id,
        name: hero.name,
        slug: hero.slug,
        intelligence: hero.powerstats.intelligence,
        strength: hero.powerstats.strength,
        speed: hero.powerstats.speed,
        durability: hero.powerstats.durability,
        power: hero.powerstats.power,
        combat: hero.powerstats.combat,
        imageXs: hero.images.xs,
        imageSm: hero.images.sm,
        imageMd: hero.images.md,
        imageLg: hero.images.lg,
      );
    } catch (e) {
      throw MapperException('Erro ao mapear');
    }
  }

  /// Converte lista de HeroEntity em lista de HeroDatabaseEntity
  List<HeroDatabaseEntity> toHeroDatabaseEntities(List<HeroEntity> heroes) {
    return heroes.map(toHeroDatabaseEntity).toList();
  }
}
