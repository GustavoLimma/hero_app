import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:super_hero_app/core/di/cards_provider.dart';
import 'package:super_hero_app/ui/pages/hero_details_page.dart';

class MyCardsPage extends StatelessWidget {
  static const routeName = '/my_cards';
  const MyCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cardsProvider = context.watch<CardsProvider>();
    final cards = cardsProvider.myCards;

    return Scaffold(
      appBar: AppBar(title: const Text('Minhas Cartas')),
      body: cards.isEmpty
          ? const Center(child: Text('Você ainda não tem cartas'))
          : ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final h = cards[index];
                return ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: h.images.sm,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
                  title: Text(h.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.bottomSlide,
                        title: 'Abandonar carta',
                        desc: 'Tem certeza que deseja remover "${h.name}" da sua coleção?',
                        btnCancelText: 'Cancelar',
                        btnOkText: 'Remover',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          cardsProvider.removeFromMyCards(h.id);
                        },
                      ).show();
                    },
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HeroDetailsPage(heroId: h.id),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
