import '../database/entity/hero_database_entity.dart';
import '../../domain/hero.dart';
import '../../domain/exception/mapper_exception.dart';

class NetworkMapper {
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
      throw MapperException(e.toString());
    }
  }

  List<HeroEntity> toHeroes(List<HeroDatabaseEntity> entities) {
    return entities.map(toHero).toList();
  }
}
