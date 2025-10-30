// lib/screens/heroes_list/heroes_list_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:super_hero_app/domain/hero.dart';
import 'package:super_hero_app/core/di/hero_provider.dart';
import 'package:super_hero_app/ui/widgets/hero_card.dart';
import 'package:super_hero_app/ui/pages/hero_details_page.dart';

class HeroesListPage extends StatelessWidget {
  static const routeName = '/heroes';
  const HeroesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HeroProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Heróis')),
      body: PagedListView<int, HeroEntity>(
        pagingController: provider.pagingController,
        builderDelegate: PagedChildBuilderDelegate<HeroEntity>(
          itemBuilder: (context, hero, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HeroDetailsPage(heroId: hero.id),
                ),
              );
            },
            child: HeroCard(hero: hero),
          ),
          firstPageErrorIndicatorBuilder: (ctx) => Center(child: Text('Erro ao carregar')),
          noItemsFoundIndicatorBuilder: (ctx) => const Center(child: Text('Nenhum herói encontrado')),
        ),
      ),
    );
  }
}
