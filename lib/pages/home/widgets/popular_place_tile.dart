import 'package:flutter/material.dart';

import '../../../constants/models/place.dart';
import 'place_card.dart';

class PopularPlaceTile extends StatelessWidget {
  const PopularPlaceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularPlaces.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PlaceCard(
              place: popularPlaces[index],
            ),
          );
        },
      ),
    );
  }
}
