import 'package:flutter/material.dart';

import '../../../constants/models/place.dart';
import 'place_card.dart';

class RecommendedPlaceTile extends StatelessWidget {
  const RecommendedPlaceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedPlaces.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: PlaceCard(
              place: recommendedPlaces[index],
            ),
          );
        },
      ),
    );
  }
}
