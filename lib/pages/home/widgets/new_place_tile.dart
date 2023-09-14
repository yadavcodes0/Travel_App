import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants/models/place.dart';

class NewPlaceTile extends StatelessWidget {
  const NewPlaceTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              height: 160,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
