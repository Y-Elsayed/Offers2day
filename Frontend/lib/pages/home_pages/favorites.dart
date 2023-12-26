import 'package:flutter/material.dart';

// Widget
import 'package:offers2day/pages/widgets/favorites_widget.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Key> itemKeys = List.generate(10, (index) => ValueKey<int>(index));

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: itemKeys.length,
      itemBuilder: (BuildContext context, int index) {
        return ContainerWithClickableHeart(
          itemKey: itemKeys[index],
          index: index,
          onRemove: () {
            removeItem(index);
          },
        );
      },
    );
  }

  void removeItem(int index) {
    setState(
      () {
        if (index >= 0 && index < itemKeys.length) {
          itemKeys.removeAt(index);
        }
      },
    );
  }
}
