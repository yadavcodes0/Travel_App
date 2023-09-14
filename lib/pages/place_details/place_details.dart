import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/models/place.dart';
import 'widgets/details_card.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({super.key, required this.place});

  final Place place;

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(widget.place.imageUrl),
                  ),
                ),
              ),
              const SizedBox(height: 118),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 114),
                child: TabBar(
                  controller: tabController,
                  indicatorColor: const Color(0xFF163C9F),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  labelStyle: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 2,
                  ),
                  labelColor: const Color(0xFF163C9F),
                  unselectedLabelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 2.50,
                  ),
                  unselectedLabelColor: const Color(0xFFACB3BD),
                  tabs: const [
                    Tab(
                      text: "Detail",
                    ),
                    Tab(
                      text: "Overview",
                    ),
                    Tab(
                      text: "Reviews",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        '${widget.place.name} ${widget.place.details}',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                          color: const Color(0xFFACB3BD),
                        ),
                      ),
                    ),
                    const Center(child: Text("Overview")),
                    const Center(child: Text("Reviews")),
                  ],
                ),
              ),
            ],
          ),
          DetailsCard(place: widget.place),
          Positioned(
            left: 45,
            bottom: 50,
            child: GestureDetector(
              child: Container(
                width: 318,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF153C9F),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Select a room",
                  style: GoogleFonts.inter(
                    color: const Color(0xFFF2F2F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 55,
            right: 24,
            child: Container(
              width: 44,
              height: 44,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 14,
                    offset: Offset(2, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: SvgPicture.asset(
                "assets/icons/heart.svg",
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
