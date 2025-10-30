import '../database/dao/hero_dao.dart';
import '../database/database_mapper.dart';
import '../network/client/api_client.dart';
import '../../domain/hero.dart';

class HeroRepository {
  final ApiClient apiClient;
  final HeroDao heroDao;
  final DatabaseMapper mapper;

  HeroRepository({
    required this.apiClient,
    required this.heroDao,
    required this.mapper,
  });

  //Busca heróis: primeiro tenta API, se falhar pega do banco
  Future<List<HeroEntity>> getHeroes({int page = 1, int limit = 20}) async {
    try {
      print('Chamando API de heróis (página $page, limite $limit)...');

      //Buscar da API
      final heroesFromApi = await apiClient.getHeroes(page: page, limit: limit);
      print('API retornou ${heroesFromApi.length} heróis');

      //Salvar no banco
      for (var hero in heroesFromApi) {
        print('Inserindo herói no banco: ${hero.name} (ID: ${hero.id})');
        final dbEntity = mapper.toHeroDatabaseEntity(hero);
        await heroDao.insertHero(dbEntity);
      }

      print('Todos os heróis da página $page foram salvos no banco local');
      return heroesFromApi;
    } catch (e) {
      print('Erro ao buscar heróis da API: $e');

      //Se falhar, pega do banco
      final dbHeroes = await heroDao.getAllHeroes();
      print('Carregados ${dbHeroes.length} heróis do banco local');

      final mappedHeroes = mapper.toHeroes(dbHeroes);
      print('Mapper converteu os dados do banco para HeroEntity');

      return mappedHeroes; 
    }
  }
}
