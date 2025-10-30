// lib/widgets/hero_card.dart
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:super_hero_app/domain/hero.dart';
import 'package:super_hero_app/ui/widgets/powerstat_progress.dart';

class HeroCard extends StatelessWidget {
  final HeroEntity hero;
  const HeroCard({required this.hero, super.key});

  @override
  Widget build(BuildContext context) {
    final power = hero.powerstats;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: hero.images.sm,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
                placeholder: (c, s) => const SizedBox(width: 72, height: 72, child: Center(child: CircularProgressIndicator())),
                errorWidget: (c, s, e) => const SizedBox(width: 72, height: 72, child: Icon(Icons.error)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hero.name, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 6),
                  PowerstatProgress(label: 'Int', value: power.intelligence ?? 0),
                  PowerstatProgress(label: 'Str', value: power.strength ?? 0),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 6),
                      Text(hero.slug, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
