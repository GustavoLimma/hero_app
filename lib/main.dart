// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_hero_app/core/di/configure_providers.dart';
import 'package:super_hero_app/core/di/hero_provider.dart';
import 'package:super_hero_app/core/di/cards_provider.dart';
import 'package:super_hero_app/ui/pages/heroes_list_page.dart';
import 'package:super_hero_app/ui/pages/daily_card_page.dart';
import 'package:super_hero_app/ui/pages/my_cards_page.dart';
import 'package:super_hero_app/ui/pages/battle_page.dart';
import 'package:super_hero_app/app_theme.dart';
import 'data/repository/hero_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Cria providers da camada de dados
  final configure = await ConfigureProviders.createDependencyTree();

  runApp(MyApp(configureProviders: configure));
}

class MyApp extends StatelessWidget {
  final ConfigureProviders configureProviders;
  const MyApp({required this.configureProviders, super.key});

  @override
  Widget build(BuildContext context) {
    final baseProviders = configureProviders.providers;

    return MultiProvider(
      providers: [
        ...baseProviders, // ApiClient, HeroRepository, etc.
        ChangeNotifierProvider<HeroProvider>(
          create: (ctx) {
            final repo = ctx.read<HeroRepository>();
            final provider = HeroProvider(repository: repo);
            provider.init();
            return provider;
          },
        ),
        ChangeNotifierProvider<CardsProvider>(
          // Corrigido: tipo explícito para repository
          create: (ctx) => CardsProvider(repository: ctx.read<HeroRepository>()),
        ),
      ],
      child: MaterialApp(
        title: 'Super Hero Cards',
        theme: AppTheme.light(),
        home: const HomeShell(),
        routes: {
          HeroesListPage.routeName: (_) => const HeroesListPage(),
          '/daily_card': (_) => const DailyCardPage(),
          '/my_cards': (_) => const MyCardsPage(),
          '/battle': (_) => const BattlePage(),
        },
      ),
    );
  }
}

class HomeShell extends StatelessWidget {
  const HomeShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Super Hero Cards')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              icon: const Icon(Icons.bubble_chart),
              label: const Text('Heróis'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HeroesListPage()),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.card_giftcard),
              label: const Text('Card Diário'),
              onPressed: () => Navigator.pushNamed(context, '/daily_card'),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.collections),
              label: const Text('Minhas Cartas'),
              onPressed: () => Navigator.pushNamed(context, '/my_cards'),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.sports_kabaddi),
              label: const Text('Batalhar'),
              onPressed: () => Navigator.pushNamed(context, '/battle'),
            ),
          ],
        ),
      ),
    );
  }
}
