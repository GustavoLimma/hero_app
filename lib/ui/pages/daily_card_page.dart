import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:super_hero_app/ui/widgets/powerstat_progress.dart';
import '../../core/di/cards_provider.dart';

class DailyCardPage extends StatefulWidget {
  static const routeName = '/daily_card';
  const DailyCardPage({super.key});

  @override
  State<DailyCardPage> createState() => _DailyCardPageState();
}

class _DailyCardPageState extends State<DailyCardPage> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _ensureCard();
  }

  //Carrega o card diario
  Future<void> _ensureCard() async {
    try {
      // Pega o provider
      final cards = context.read<CardsProvider>();
      
      print('Chamando drawDailyCard...');
      //Chama o método que busca o herói da api no cardprovider
      await cards.drawDailyCard();

      if (cards.lastDailyHero != null) {
        print('Card carregado: ${cards.lastDailyHero!.name}');
      } else {
        print('Nenhum herói retornado da API.');
      }

      setState(() {
        _loading = false;
      });
    } catch (e, st) {
      print('Erro ao buscar card: $e');
      print(st);
      setState(() {
        _loading = false;
      });
    }
  }

  //Obtem o estado atualizado
  @override
  Widget build(BuildContext context) {
    final cards = context.watch<CardsProvider>();
    final hero = cards.lastDailyHero;

    return Scaffold(
      appBar: AppBar(title: const Text('Card Diário')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : hero == null
              ? const Center(child: Text('Nenhum card disponível'))
              : Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: hero.images.md,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 12),
                      Text(hero.name, style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(height: 8),
                      PowerstatProgress(label: 'Intelligence', value: hero.powerstats.intelligence ?? 0),
                      PowerstatProgress(label: 'Strength', value: hero.powerstats.strength ?? 0),
                      const SizedBox(height: 12),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Adicionar às minhas cartas'),
                        onPressed: () async {
                          final success = await cards.addToMyCards(hero);
                          if (!mounted) return;

                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(success ? 'Adicionado' : 'Não foi possível adicionar'),
                              content: Text(success
                                  ? 'Carta adicionada às suas cartas.'
                                  : 'Limite de 15 cartas atingido ou já existe.'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
    );
  }
}
