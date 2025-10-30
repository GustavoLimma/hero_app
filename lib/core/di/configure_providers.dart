import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../data/database/dao/hero_dao.dart';
import '../../data/database/dao/hero_dao_impl.dart'; 
import '../../data/database/database_mapper.dart';
import '../../data/network/client/api_client.dart';
import '../../data/network/network_mapper.dart';
import '../../data/repository/hero_repository.dart';
import '../../data/database/app_database.dart';

//responsável por configurar a árvore de dependências
class ConfigureProviders {
  final List<SingleChildWidget> providers;

  ConfigureProviders({required this.providers});

//criar e configura as dependências
// Retorna uma instância de ConfigureProviders com os providers configurados.
  static Future<ConfigureProviders> createDependencyTree() async {
    final apiClient = ApiClient(baseUrl: "https://server-json-hero.vercel.app/api");
    final networkMapper = NetworkMapper();
    final databaseMapper = DatabaseMapper();

    final database = await $FloorAppDatabase
        .databaseBuilder('heroes_database.db')
        .build();
  
    final heroDao = database.heroDao;

    //Repositório que irá centralizar o acesso aos dados
    final heroRepository = HeroRepository(
      apiClient: apiClient,
      heroDao: heroDao,
      mapper: databaseMapper,
    );

    //Instância com todos os providers
    return ConfigureProviders(providers: [
      Provider<ApiClient>.value(value: apiClient),
      Provider<NetworkMapper>.value(value: networkMapper),
      Provider<DatabaseMapper>.value(value: databaseMapper),
      Provider<HeroDao>.value(value: heroDao),
      Provider<HeroRepository>.value(value: heroRepository),
    ]);
  }
}
