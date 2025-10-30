import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:super_hero_app/domain/hero.dart';
import 'package:super_hero_app/data/repository/hero_repository.dart';

//Gerencia a listagem dos heróis.
class HeroProvider with ChangeNotifier {
  final HeroRepository repository;

  HeroProvider({required this.repository});

  static const _pageSize = 20;

  //Ferencia o carregamento incremental dos itens
  final PagingController<int, HeroEntity> pagingController =
      PagingController(firstPageKey: 1);

  bool loadingDetails = false;
  String? errorMessage;

  void init() {
    pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  //Busca uma página de heróis
  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await repository.getHeroes(page: pageKey);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  //Busca os detalhes de um herói
  Future<HeroEntity?> getHeroDetails(int id) async {
    loadingDetails = true;
    notifyListeners();
    try {
      final all = await repository.getHeroes(page: 1); // busca primeira página
      HeroEntity? hero;
      try {
        hero = all.firstWhere((h) => h.id == id);
      } catch (_) {
        hero = null; 
      }
      loadingDetails = false;
      return hero;
    } catch (e) {
      loadingDetails = false;
      errorMessage = e.toString();
      notifyListeners();
      return null;
    } finally {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}
