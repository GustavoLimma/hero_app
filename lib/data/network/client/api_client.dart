import 'package:dio/dio.dart';
import 'package:super_hero_app/domain/exception/network_exception.dart';
import '../entity/http_paged_result.dart';
import '../../../domain/hero.dart';

//Chamadas a api
class ApiClient {
  late final Dio _dio;

  ApiClient({required String baseUrl}) {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

//Obtém lista de heróis da api e retorna uma lista
Future<List<HeroEntity>> getHeroes({int? page, int? limit}) async {
  try {
    final response = await _dio.get(
      "/data",
      queryParameters: {
        if (page != null) '_page': page,
        if (limit != null) '_per_page': limit,
      },
    );

    print('Chamando API de heróis...');
    print('Status: ${response.statusCode}');
    print('Tipo de dado retornado: ${response.data.runtimeType}');
    print('Conteúdo: ${response.data}');

    if (response.statusCode != null && response.statusCode! >= 400) {
      throw NetworkException(
        'Erro ao chamar API',
        statusCode: response.statusCode,
      );
    }

    //A api retorna uma lista json
    final List<dynamic> jsonList = response.data as List<dynamic>;

    final heroes = jsonList
        .map((json) => HeroEntity.fromJson(json as Map<String, dynamic>))
        .toList();

    print('Convertidos ${heroes.length} heróis da API');
    return heroes;
  } on DioError catch (e) {
    throw NetworkException(
      'Erro ao chamar API: ${e.message}',
      statusCode: e.response?.statusCode,
    );
  } catch (e) {
    throw NetworkException('Erro desconhecido ao buscar heróis: $e');
  }
}

}
