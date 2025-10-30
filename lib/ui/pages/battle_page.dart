import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:super_hero_app/domain/hero.dart';
import 'package:super_hero_app/core/di/cards_provider.dart';
import 'package:super_hero_app/ui/widgets/powerstat_progress.dart';

class BattlePage extends StatefulWidget {
  static const routeName = '/battle';
  const BattlePage({super.key});

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  List<HeroEntity> playerDeck = [];
  int roundIndex = 0;
  int wins = 0;
  int losses = 0;
  int draws = 0;

  @override
  void initState() {
    super.initState();
    _prepareBattle();
  }

  void _prepareBattle() {
    final myCards = context.read<CardsProvider>().myCards;
    if (myCards.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Você precisa ter pelo menos uma carta para batalhar.'),
          ),
        );
        Navigator.pop(context);
      });
      return;
    }

    playerDeck = List<HeroEntity>.from(myCards)..shuffle();
    roundIndex = 0;
    wins = 0;
    losses = 0;
    draws = 0;
  }

  void _registerResult(String result) {
    setState(() {
      switch (result) {
        case 'win':
          wins++;
          break;
        case 'lose':
          losses++;
          break;
        case 'draw':
          draws++;
          break;
      }
      roundIndex++;
    });

    if (roundIndex >= playerDeck.length) {
      _showEndDialog();
    }
  }

  void _showEndDialog() {
    String message;
    if (wins > losses) {
      message = 'Parabéns! Você venceu a maioria das batalhas!';
    } else if (losses > wins) {
      message = 'Você perdeu mais batalhas desta vez.';
    } else {
      message = 'Foi um empate geral!';
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Fim da Batalha'),
        content: Text(
          'Placar final:\n'
          'Vitórias: $wins\n'
          'Empates: $draws\n'
          'Derrotas: $losses\n\n'
          '$message',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (playerDeck.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Batalhar')),
        body: const Center(child: Text('Adicione cartas para batalhar.')),
      );
    }

    if (roundIndex >= playerDeck.length) {
      return Scaffold(
        appBar: AppBar(title: const Text('Batalhar')),
        body: const Center(child: Text('Batalha concluída!')),
      );
    }

    final hero = playerDeck[roundIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Batalha Solo')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              'Rodada ${roundIndex + 1}/${playerDeck.length}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text('Placar: V ${wins}  |  E ${draws}  |  D ${losses}'),
            const SizedBox(height: 16),
            Expanded(child: _buildHeroCard(hero)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.check_circle, color: Colors.white),
                  label: const Text('Venci'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () => _registerResult('win'),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.pause_circle, color: Colors.white),
                  label: const Text('Empate'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[700]),
                  onPressed: () => _registerResult('draw'),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.cancel, color: Colors.white),
                  label: const Text('Perdi'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () => _registerResult('lose'),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroCard(HeroEntity hero) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: hero.images.md,
              height: 180,
              fit: BoxFit.cover,
              errorWidget: (_, __, ___) => const Icon(Icons.error, size: 64),
            ),
            const SizedBox(height: 12),
            Text(hero.name, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            PowerstatProgress(label: 'Int', value: hero.powerstats.intelligence ?? 0),
            PowerstatProgress(label: 'Str', value: hero.powerstats.strength ?? 0),
            PowerstatProgress(label: 'Spd', value: hero.powerstats.speed ?? 0),
            PowerstatProgress(label: 'Pwr', value: hero.powerstats.power ?? 0),
          ],
        ),
      ),
    );
  }
}
