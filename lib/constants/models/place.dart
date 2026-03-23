class Place {
  final String imageUrl;
  final String name;
  final String details;
  final String location;
  final String price;
  final String rating;

  Place({
    required this.imageUrl,
    required this.name,
    required this.details,
    required this.location,
    required this.price,
    required this.rating,
  });
}

List<Place> popularPlaces = [
  Place(
    imageUrl: "assets/images/image7.jpeg",
    name: "Para Hotel",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "75",
    rating: "4.3",
  ),
  Place(
    imageUrl: "assets/images/image8.jpeg",
    name: "Heven Hotel",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "70",
    rating: "4.2",
  ),
  Place(
    imageUrl: "assets/images/image11.jpg",
    name: "Hotel Koh",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "80",
    rating: "4.4",
  ),
  Place(
    imageUrl: "assets/images/image1.jpeg",
    name: "Grand Venice Resort",
    details: "Experience the ultimate luxury right on the canals of Venice.",
    location: "Venice",
    price: "120",
    rating: "4.8",
  ),
  Place(
    imageUrl: "assets/images/image2.jpeg",
    name: "Ocean View Villa",
    details: "Wake up to stunning ocean views and enjoy premium amenities.",
    location: "Maldives",
    price: "250",
    rating: "4.9",
  ),
  Place(
    imageUrl: "assets/images/image3.jpeg",
    name: "Alpine Retreat",
    details: "Escape to the mountains in this cozy yet luxurious lodge.",
    location: "Swiss Alps",
    price: "150",
    rating: "4.7",
  )
];

List<Place> recommendedPlaces = [
  Place(
    imageUrl: "assets/images/image9.jpeg",
    name: "Paradise Hotel",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "90",
    rating: "4.8",
  ),
  Place(
    imageUrl: "assets/images/image10.jpeg",
    name: "Hotel Zluun",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "85",
    rating: "4.9",
  ),
  Place(
    imageUrl: "assets/images/image12.jpg",
    name: "Hotel Amriona",
    details:
        "is the most luxurious luxury hotel segment of Capi, located in big...",
    location: "Venice",
    price: "92",
    rating: "4.7",
  ),
  Place(
    imageUrl: "assets/images/image4.jpeg",
    name: "City Lights Hotel",
    details: "Stay in the heart of the city with breathtaking skyline views.",
    location: "New York",
    price: "180",
    rating: "4.6",
  ),
  Place(
    imageUrl: "assets/images/image6.jpeg",
    name: "Tropical Oasis",
    details: "A hidden gem surrounded by lush gardens and pristine beaches.",
    location: "Bali",
    price: "110",
    rating: "4.8",
  )
];

List<String> images = [
  "assets/images/image4.jpeg",
  "assets/images/image6.jpeg",
  "assets/images/image1.jpeg",
  "assets/images/image2.jpeg",
  "assets/images/image3.jpeg",
];
