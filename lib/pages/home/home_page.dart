// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/home/widgets/app_bar.dart';

import 'widgets/new_place_tile.dart';
import 'widgets/popular_place_tile.dart';
import 'widgets/recommended_place_tile.dart';
import 'widgets/see_more.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF9FCFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, right: 24, left: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // AppBar
                MyAppBar(),

                SizedBox(height: 16),

                // New Places
                SeeMoreRow(tittle: "New Place"),

                SizedBox(height: 16),

                NewPlaceTile(),

                SizedBox(height: 28),

                // Popular Hotels
                SeeMoreRow(tittle: "Popular Hotel"),

                SizedBox(height: 16),

                PopularPlaceTile(),

                SizedBox(height: 28),

                // Recommended
                SeeMoreRow(tittle: "Recommended"),

                SizedBox(height: 16),

                RecommendedPlaceTile(),

                SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
