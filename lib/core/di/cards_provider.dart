import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:super_hero_app/domain/hero.dart';
import 'package:super_hero_app/data/repository/hero_repository.dart';
import 'package:collection/collection.dart';

//Gerencia o estado dos cards
class CardsProvider with ChangeNotifier {
  final HeroRepository repository;
  final List<HeroEntity> _myCards = [];
  static const String _prefsDailyKey = 'daily_card_date';
  static const String _prefsDailyHeroId = 'daily_card_hero_id';
  static const String _prefsMyCardsKey = 'my_cards_ids';

  DateTime? lastDailyDate;
  HeroEntity? lastDailyHero;

  //injeta e e carrega os dados persistidos 
  CardsProvider({required this.repository}) {
    _loadFromPrefs();
  }

  List<HeroEntity> get myCards => List.unmodifiable(_myCards);

  //Carrega os dados persistidos localmente
  Future<void> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final dateStr = prefs.getString(_prefsDailyKey);
    final id = prefs.getInt(_prefsDailyHeroId);
    if (dateStr != null) {
      lastDailyDate = DateTime.tryParse(dateStr);
    }
    if (id != null) {
      final heroes = await repository.getHeroes(page: 1);
      lastDailyHero = heroes.firstWhereOrNull((h) => h.id == id);
    };
    final myIds = prefs.getStringList(_prefsMyCardsKey) ?? [];
    if (myIds.isNotEmpty) {
      final all = await repository.getHeroes(page: 1);
      for (final sid in myIds) {
        final id = int.tryParse(sid);
        if (id != null) {
          final found = all.firstWhereOrNull((h) => h.id == id);
          if (found != null && !_myCards.any((c) => c.id == found.id)) {
            _myCards.add(found);
          }
        }
      }
    }
    notifyListeners();
  }

  //Sorteio
  Future<void> drawDailyCard() async {
    final now = DateTime.now();
    if (lastDailyDate != null &&
        lastDailyDate!.year == now.year &&
        lastDailyDate!.month == now.month &&
        lastDailyDate!.day == now.day) {
      return;
    }
    //Escolha do heroi
    final heroes = await repository.getHeroes(page: 1);
    if (heroes.isEmpty) return;
    final rand = Random();
    final chosen = heroes[rand.nextInt(heroes.length)];
    lastDailyHero = chosen;
    lastDailyDate = now;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsDailyKey, now.toIso8601String());
    await prefs.setInt(_prefsDailyHeroId, chosen.id);
    notifyListeners();
  }

  //Adiciona o heroi a lista dos meus herois
  Future<bool> addToMyCards(HeroEntity hero) async {
    if (_myCards.length >= 15) return false;
    if (_myCards.any((h) => h.id == hero.id)) return false;
    _myCards.add(hero);
    await _saveMyCardsToPrefs();
    notifyListeners();
    return true;
  }

  //Remove um heroi
  Future<void> removeFromMyCards(int heroId) async {
    _myCards.removeWhere((h) => h.id == heroId);
    await _saveMyCardsToPrefs();
    notifyListeners();
  }

  //Salva os herois
  Future<void> _saveMyCardsToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final ids = _myCards.map((h) => h.id.toString()).toList();
    await prefs.setStringList(_prefsMyCardsKey, ids);
  }
}
