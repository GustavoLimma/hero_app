import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:super_hero_app/core/di/hero_provider.dart';
import 'package:super_hero_app/ui/widgets/powerstat_progress.dart';

class HeroDetailsPage extends StatefulWidget {
  final int heroId;
  const HeroDetailsPage({required this.heroId, super.key});

  @override
  State<HeroDetailsPage> createState() => _HeroDetailsPageState();
}

class _HeroDetailsPageState extends State<HeroDetailsPage> {
  bool _loading = true;
  dynamic _hero;

  @override
  void initState() {
    super.initState();
    _loadHero();
  }

  //Carrega os detalhes do herói
  Future<void> _loadHero() async {
    final provider = context.read<HeroProvider>();
    final hero = await provider.getHeroDetails(widget.heroId);
    setState(() {
      _hero = hero;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_hero?.name ?? 'Detalhes')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: _hero!.images.lg,
                    height: 260,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (c, s) => const SizedBox(
                      height: 260,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(_hero!.name, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  ...[
                    ['Intelligence', _hero!.powerstats.intelligence],
                    ['Strength', _hero!.powerstats.strength],
                    ['Speed', _hero!.powerstats.speed],
                    ['Durability', _hero!.powerstats.durability],
                    ['Power', _hero!.powerstats.power],
                    ['Combat', _hero!.powerstats.combat],
                  ].map((row) => PowerstatProgress(
                        label: row[0] as String,
                        value: (row[1] as int?) ?? 0,
                      )),
                  const SizedBox(height: 16),
                ],
              ),
            ),
    );
  }
}
